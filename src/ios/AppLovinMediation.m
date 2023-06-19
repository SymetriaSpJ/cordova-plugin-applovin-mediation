#import "AppLovinMediation.h"
#import <GoogleMobileAds/GADRequest.h>
#import <AppLovinAdapter/GADMAdapterAppLovinExtras.h>

@implementation AppLovinMediation

- (void)pluginInitialize
{
    [super pluginInitialize];

    GADRequest *request = [GADRequest request];
    GADMAdapterAppLovinExtras * extras = [[GADMAdapterAppLovinExtras alloc] init];
    extras.muteAudio = YES;
    [request registerAdNetworkExtras:extras];
}

@end
