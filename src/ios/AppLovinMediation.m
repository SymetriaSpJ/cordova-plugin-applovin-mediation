#import AppLovinMediation.h
#import <GoogleMobileAds/GADRequest.h>
#import <AppLovinSDK/AppLovinSDK.h>

@implementation AppLovinMediation

- (void)pluginInitialize
{
    [super pluginInitialize];

    GADRequest *request = [GADRequest request];
    GADMAdapterAppLovinExtras * extras = [[GADMAdapterAppLovinExtras alloc] init];
    extras.muteAudio = YES;
    [request registerAdNetworkExtras:extras];
}
