//
//  PerguntaDao.m
//  quiz-objetivec
//
//  Created by dainf on 24/02/17.
//  Copyright © 2017 br.utfpr. All rights reserved.
//

#import "PerguntaDao.h"
#import "Pergunta.h"

@implementation PerguntaDao

- (id) init {
    self = [super init];
    
    [self criarPerguntas];
    
    return self;
}

- (void) criarPerguntas {
    // lista de perguntas
    
    self.perguntas = [NSMutableArray new];
    
//    1 pergunta
    Pergunta *p1 = [Pergunta new];
    p1.pergunta = @"Pergunta 1";
    p1.opcoes = @[@"Opcao1",@"opcao2", @"opcao3"];
    p1.respostaCerta = 1;
    
    NSLog(@"%@", p1.pergunta);
    
    [self.perguntas addObject: p1];
    
//    2 pergunta
    Pergunta *p2 = [Pergunta new];
    p2.pergunta = @"Pergunta 2";
    p2.opcoes = @[@"Opcao1",@"opcao2", @"opcao3"];
    p2.respostaCerta = 2;
    
    [self.perguntas addObject: p2];
}


@end
