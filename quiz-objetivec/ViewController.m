//
//  ViewController.m
//  quiz-objetivec
//
//  Created by dainf on 24/02/17.
//  Copyright © 2017 br.utfpr. All rights reserved.
//

#import "ViewController.h"
#import "ResultadoViewController.h"
#import "Pergunta.h"

@interface ViewController ()

@end

@implementation ViewController

NSInteger perguntaAtual;
Pergunta* p;

-(id) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        perguntaAtual = 0;
        self.perguntaDao = [PerguntaDao new];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self atualizarTelaPergunta];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) atualizarTelaPergunta {
    // titulo
    self.tituloQuiz.text = [NSString stringWithFormat:@"Quiz %i ... %i", perguntaAtual + 1, self.perguntaDao.perguntas.count];
    
    // Pergunta
    p = self.perguntaDao.perguntas[perguntaAtual];
    self.perguntaLabel.text = p.pergunta;
    
    self.opcaoUmLabel.text = p.opcoes[0];
    self.opcaoDoisLabel.text = p.opcoes[1];
    self.opcaoTresLabel.text = p.opcoes[2];
    
    [self limparOpcoesColor];
    
    self.opcaoUmLabel.backgroundColor = [UIColor whiteColor];
    self.opcaoDoisLabel.backgroundColor = [UIColor whiteColor];
    self.opcaoTresLabel.backgroundColor = [UIColor whiteColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) limparOpcoesColor {
    self.opcaoUm.backgroundColor = [UIColor lightGrayColor];
    self.opcaoDois.backgroundColor = [UIColor lightGrayColor];
    self.opcaoTres.backgroundColor = [UIColor lightGrayColor];
}

- (IBAction) selectOpcao:(id)sender {
    [self limparOpcoesColor];
    
    UIButton *button = (UIButton*) sender;
    
    button.backgroundColor = [UIColor blueColor];
    
    if (button == self.opcaoUm) {
        p.resposta = 1;
    } else if (button == self.opcaoDois) {
        p.resposta = 2;
    } else {
        p.resposta = 3;
    }
    
}

// Evento onClick para proxima pergunta
- (IBAction) proximaPergunta {
    if (perguntaAtual == self.perguntaDao.perguntas.count-1) {
        UIStoryboard *storeBoard = [UIStoryboard storyboardWithName: @"Main"
                                                             bundle: nil];

        ResultadoViewController *resultado = [storeBoard instantiateViewControllerWithIdentifier: @"ResultadoID"];
        
        Pergunta *perg;
        NSInteger total = 0;
        for (int i = 0; i < self.perguntaDao.perguntas.count; i++) {
            perg = self.perguntaDao.perguntas[i];
            if (perg.validarResposta) {
                total += 10;
            }
        }
        resultado.totalPontos = [NSString stringWithFormat:@"%i", total];
        
        [self presentViewController: resultado animated: YES completion:nil];
    } else {
        perguntaAtual += 1;
        [self habilitaDesabiltaBtn: true];
        [self atualizarTelaPergunta];
    }
}

- (void) habilitaDesabiltaBtn:(bool) flag {
    self.opcaoUm.enabled = flag;
    self.opcaoDois.enabled = flag;
    self.opcaoTres.enabled = flag;
    self.confereValorBtn.enabled = flag;
}

//Evento onClick para conferir resp
- (IBAction) conferirResposta {
    [self habilitaDesabiltaBtn: false];
    
    if (p.validarResposta) {
        if (p.resposta == 1) {
            self.opcaoUmLabel.backgroundColor = [UIColor greenColor];
        }
        if (p.resposta == 2) {
            self.opcaoDoisLabel.backgroundColor = [UIColor greenColor];
        }
        if (p.resposta == 3) {
            self.opcaoTresLabel.backgroundColor = [UIColor greenColor];
        }
    } else {
        if (p.resposta == 1) {
            self.opcaoUmLabel.backgroundColor = [UIColor redColor];
        }
        if (p.resposta == 2) {
            self.opcaoDoisLabel.backgroundColor = [UIColor redColor];
        }
        if (p.resposta == 3) {
            self.opcaoTresLabel.backgroundColor = [UIColor redColor];
        }
    }
}

@end
