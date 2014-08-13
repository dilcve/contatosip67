//
//  ListaContatosViewController.m
//  ContatosIP67
//
//  Created by rodrigo ferreira on 06/04/14.
//  Copyright (c) 2014 Calum. All rights reserved.
//

#import "ListaContatosViewController.h"
#import "FormularioContatoViewController.h"

@implementation ListaContatosViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.navigationItem.title = @"Contatos";
        UIBarButtonItem *botaoExibirFormulario = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
        
        self.navigationItem.rightBarButtonItem = botaoExibirFormulario;
    }
    return self;
}

- (void) exibeFormulario{
    //NSLog(@"Aqui vamos exibir o formuário");
    //UIAlertView *alert = [[UIAlertView alloc]init];
    //alert.title = @"Exibir Formulário";
    //alert.message = @"Isso é um UIAlertView";
    //[alert addButtonWithTitle:@"Ok"];
    //[alert show];
    FormularioContatoViewController *form = [[FormularioContatoViewController alloc] init];
    form.contatos = self.contatos;
    
    [self.navigationController pushViewController:form animated:YES];
    
}
-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"Total cadastrado: %d", [self.contatos count]);
}


@end
