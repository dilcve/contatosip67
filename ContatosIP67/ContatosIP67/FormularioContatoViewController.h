//
//  FormularioContatoViewController.h
//  ContatosIP67
//
//  Created by ios4193 on 29/03/14.
//  Copyright (c) 2014 Calum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FormularioContatoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nome;
@property (weak, nonatomic) IBOutlet UITextField *telefone;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *endereco;
@property (weak, nonatomic) IBOutlet UITextField *site;
@property (strong) NSMutableArray *contatos;


- (IBAction)proximoElemento:(UITextField*)textField;


@end
