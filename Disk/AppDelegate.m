//
//  AppDelegate.m
//  Disk
//
//  Created by Zaur Giyasov on 22/08/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "AppDelegate.h"
#import <YandexLoginSDK/YandexLoginSDK.h>

@interface AppDelegate ()

@property (nonatomic) NSString *clientID;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.clientID = [NSString stringWithFormat:@"4fa610e1087e4cacb46f15f2c2f9d713"];
    
    NSError *error = nil;
    @try {
        
        [YXLSdk.shared activateWithAppId: self.clientID error:&error];
    } @catch (NSException *exception) {
        NSLog(@"** Exception %@", exception.debugDescription);
    } @finally {
        //
    }
    
    return YES;
}


-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    return [YXLSdk.shared handleOpenURL:url sourceApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey]];
}



@end
