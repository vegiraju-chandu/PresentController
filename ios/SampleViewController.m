//
//  SampleViewController.m
//  VersionChecker
//
//  Created by Raju on 14/09/20.
//

#import "SampleViewController.h"

@interface SampleViewController ()

@end

@implementation SampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
  self.view.backgroundColor = [UIColor whiteColor];
  
  
  UILabel  *sampleText = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 300, 100)];
  [sampleText setText:@"In presented Controller"];
  [sampleText setTextColor:[UIColor  blackColor]];
  sampleText.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
  [self.view addSubview:sampleText];
  
    // Do any additional setup after loading the view.
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
