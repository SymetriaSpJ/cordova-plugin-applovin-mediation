#import AppLovinMediation.h

@implementation AppLovinMediation

- (void)pluginInitialize
{
    [super pluginInitialize];

    GADRequest *request = [GADRequest request];
    GADMAdapterAppLovinExtras * extras = [[GADMAdapterAppLovinExtras alloc] init];
    extras.muteAudio = NO;
    [request registerAdNetworkExtras:extras];
}
