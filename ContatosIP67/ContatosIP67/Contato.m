//
//  Contato.m
//  ContatosIP67
//
//  Created by ios4193 on 05/04/14.
//  Copyright (c) 2014 Calum. All rights reserved.
//

#import "Contato.h"

@implementation Contato

@synthesize nome, telefone, email, endereco, site;

-(id)init{
    self = [super init];
    
    if(self){
        self.nome = @"João";
    }
    return self;
}

-(NSString *)description{
    
    NSString *contato = [NSString stringWithFormat:@"Contato: %@", self.nome];
    return  contato;
}

@end
