//
//  ViewController.m
//  Disk
//
//  Created by Zaur Giyasov on 22/08/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "ViewController.h"
#import <YandexLoginSDK/YandexLoginSDK.h>

@interface ViewController () <YXLObserver, YXLLoginResult>

@end

@implementation ViewController

@synthesize jwt;
@synthesize token;


- (void)viewDidLoad {
    [super viewDidLoad];
    // clear all tokens
    [YXLSdk.shared logout];
    
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self addMeAsObserver];
    [self autorizeYAD];
    
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    
    NSLog(@"%@", self); // check point
}

-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self removeMeFromObservers];
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(void)autorizeYAD {
    [YXLSdk.shared authorize];
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

// Add observers
-(void)addMeAsObserver {
    [YXLSdk.shared addObserver:self];
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(void)removeMeFromObservers {
    [YXLSdk.shared removeObserver:self];
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

// Delegate methods
- (void)loginDidFinishWithError:(nonnull NSError *)error {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)loginDidFinishWithResult:(nonnull id<YXLLoginResult>)result {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)setNeedsFocusUpdate {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)updateFocusIfNeeded {
    NSLog(@"Log: %@: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

@end

