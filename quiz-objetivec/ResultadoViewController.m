//
//  ResultadoViewController.m
//  quiz-objetivec
//
//  Created by dainf on 24/02/17.
//  Copyright © 2017 br.utfpr. All rights reserved.
//

#import "ResultadoViewController.h"

@interface ResultadoViewController ()

@end

@implementation ResultadoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.txtTotalPontos.text = self.totalPontos;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
