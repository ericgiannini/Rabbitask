//
//  AddRabbitaskVC.m
//
//
//  Created by Eric Giannini on 5/21/15.
//
//

#import "AddRabbitaskVC.h"

@interface AddRabbitaskVC ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;


@end

@implementation AddRabbitaskVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender != self.saveButton) return;
    if (self.textField.text.length > 0) {
        self.rabbitask = [[Rabbitask alloc] init];
        self.rabbitask.itemName = self.textField.text;
        self.rabbitask.completed = NO;
    }
}
@end
