//
//  Pergunta.h
//  quiz-objetivec
//
//  Created by dainf on 24/02/17.
//  Copyright © 2017 br.utfpr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pergunta : NSObject

@property NSString *pergunta;
@property NSArray *opcoes;

@property NSInteger respostaCerta;
@property NSInteger resposta;

-(bool) validarResposta;

@end
