#import "ExampleAppDelegate.h"
#import "ExampleWKWebViewController.h"

@implementation ExampleAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    ExampleWKWebViewController* WKWebViewExampleController = [[ExampleWKWebViewController alloc] init];
    WKWebViewExampleController.tabBarItem.title             = @"WKWebView";
    

    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController addChildViewController:WKWebViewExampleController];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
