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
    Pergunta* p = self.perguntaDao.perguntas[perguntaAtual];
    self.perguntaLabel.text = p.pergunta;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Evento onClick para proxima pergunta
- (IBAction) proximaPergunta {
    if (perguntaAtual == self.perguntaDao.perguntas.count-1) {
        UIStoryboard *storeBoard = [UIStoryboard storyboardWithName: @"Main"
                                                             bundle: nil];

        ViewController *resultado = [storeBoard instantiateViewControllerWithIdentifier: @"ResultadoID"];
        [self presentViewController: resultado animated: YES completion:nil];
    } else {
        perguntaAtual += 1;
        [self atualizarTelaPergunta];
    }
}

//Evento onClick para conferir resp
- (IBAction) conferirResposta {
    NSLog(@"Conferir resposta");
}

@end
