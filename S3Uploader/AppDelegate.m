
#import "AppDelegate.h"
#import "S3UploaderViewController.h"
#import <AWSRuntime/AWSRuntime.h>

@implementation AppDelegate

@synthesize window = _window;

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    UINavigationController *container = [UINavigationController new];
    container.navigationBar.barStyle = UIBarStyleBlack;
    
    S3UploaderViewController *s3Uploader = [S3UploaderViewController new];
    [container pushViewController:s3Uploader animated:NO];
    [s3Uploader release];

    _window.rootViewController = container;
    [container release];

    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];

    // Logging Control - Do NOT use logging for non-development builds.
#ifdef DEBUG
    [AmazonLogger verboseLogging];
#else
    [AmazonLogger turnLoggingOff];
#endif
    
    [AmazonErrorHandler shouldNotThrowExceptions];
    
    [_window makeKeyAndVisible];
    
    return YES;
}

-(void)dealloc
{
    [_window release];
    
    [super dealloc];
}

@end
