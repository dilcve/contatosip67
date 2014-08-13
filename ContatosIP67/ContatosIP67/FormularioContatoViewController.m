//
//  FormularioContatoViewController.m
//  ContatosIP67
//
//  Created by ios4193 on 29/03/14.
//  Copyright (c) 2014 Calum. All rights reserved.
//

#import "FormularioContatoViewController.h"
#import "Contato.h"

@interface FormularioContatoViewController ()

@end

@implementation FormularioContatoViewController
@synthesize nome, telefone, email, endereco, site;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (Contato *)pagaDadosDoFormulario {
    
    Contato* contato = [[Contato alloc]init];
    
    contato.nome = [nome text];
    contato.email = [email text];
    contato.telefone = [telefone text];
    contato.endereco = [endereco text];
    contato.site = [site text];
    
    [self.view endEditing:YES];
    
    return contato;
}

-(IBAction)proximoElemento:(UITextField *)textField{

    if(textField == self.nome){
        [self.telefone becomeFirstResponder];
    } else if(textField == self.telefone){
        [self.email becomeFirstResponder];
    } else if(textField == self.email){
        [self.endereco becomeFirstResponder];
    } else if(textField == self.endereco){
        [self.site becomeFirstResponder];
    } else if(textField == self.site){
        [self.site resignFirstResponder];
    }
    
}

-(id)init{
    self = [super init];
    if(self){
        
        self.navigationItem.title = @"Cadastro";
        
        UIBarButtonItem *adiciona = [[UIBarButtonItem alloc] initWithTitle:@"Adiciona" style:UIBarButtonItemStylePlain target:self action:@selector(criaContato)];
        
        self.navigationItem.rightBarButtonItem = adiciona;
        
    }
    return self;
}

- (void) criaContato {
    Contato *contato = [[Contato alloc] init];
    [self.contatos addObject:contato];
    
    NSLog(@"Contatos cadastrados: %d", [self.contatos count]);
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
