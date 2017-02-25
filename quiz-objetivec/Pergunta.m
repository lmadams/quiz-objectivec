//
//  Pergunta.m
//  quiz-objetivec
//
//  Created by dainf on 24/02/17.
//  Copyright © 2017 br.utfpr. All rights reserved.
//

#import "Pergunta.h"

@implementation Pergunta


-(bool) validarResposta {
    return self.resposta == self.respostaCerta;
}

@end
