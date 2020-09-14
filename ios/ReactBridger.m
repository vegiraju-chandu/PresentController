//
//  ReactBridger.m
//  VersionChecker
//
//  Created by Raju on 08/08/20.
//

#import "ReactBridger.h"
#import <React/RCTLog.h>
#import "AppDelegate.h"
#import "SampleViewController.h"

@implementation ReactBridger

RCT_EXPORT_MODULE();



RCT_EXPORT_METHOD(openSampleMethod)
{
  RCTLogInfo(@"From xcode project");
  
  dispatch_async(dispatch_get_main_queue(), ^{
      NSURL *url = [NSURL URLWithString:@"sampleApp://"];
      if ( [[UIApplication sharedApplication] canOpenURL:url] ) {
        [[UIApplication sharedApplication]openURL:url options:kNilOptions completionHandler:nil];
      }
  });
  
}

RCT_EXPORT_METHOD(presentController) {
  dispatch_async(dispatch_get_main_queue(), ^{
       AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
          UIWindow *window = delegate.window;
          UIViewController *rootController = (UIViewController *) window.rootViewController;
          
          SampleViewController *sample = [[SampleViewController alloc]init];
          [rootController presentViewController:sample animated:true completion:nil];
  });
}

@end
