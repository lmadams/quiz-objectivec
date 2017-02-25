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
    p1.pergunta = @"Objective c é utilizado para desenvolvimento para:";
    p1.opcoes = @[@"IOS",@"Windows", @"Android"];
    p1.respostaCerta = 1;
    
    [self.perguntas addObject: p1];
    
//    2 pergunta
    Pergunta *p2 = [Pergunta new];
    p2.pergunta = @"Quais foram os criadores de Objective C:";
    p2.opcoes = @[@"Patrick Naughton, Mike Sheridan",@"Guido van Rossum", @"Brad Cox e Tom Love"];
    p2.respostaCerta = 3;
    
    [self.perguntas addObject: p2];
    
//    3 pergunta
    Pergunta *p3 = [Pergunta new];
    p3.pergunta = @"3 Em qual década foi criado o Objective C:";
    p3.opcoes = @[@"1990",@"1980", @"2000"];
    p3.respostaCerta = 2;
    
    [self.perguntas addObject: p3];

//    4 pergunta
    Pergunta *p4 = [Pergunta new];
    p4.pergunta = @"Qual dessas linguagens veio substituir objective c:";
    p4.opcoes = @[@"Swift",@"Python", @"Java"];
    p4.respostaCerta = 1;
    
    [self.perguntas addObject: p4];
}


@end
