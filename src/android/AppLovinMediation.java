package com.applovin.mediation.cordova;

import android.os.Bundle;

import com.google.android.gms.ads.AdRequest;

import com.applovin.mediation.AppLovinExtras;
import com.applovin.mediation.ApplovinAdapter;

import org.apache.cordova.CordovaInterface;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CordovaWebView;

public class AppLovinMediation extends CordovaPlugin {
    @Override
    public void initialize(final CordovaInterface cordova, final CordovaWebView webView)
    {
        super.initialize( cordova, webView );

        this.setAdsMuted();
    }

    public void setAdsMuted()
    {
        System.out.println("APPLOVIN setAdsMuted");
        Bundle extras = new AppLovinExtras.Builder()
                .setMuteAudio(true)
                .build();
        AdRequest request = new AdRequest.Builder()
                .addNetworkExtrasBundle(ApplovinAdapter.class, extras)
                .build();
    }
}