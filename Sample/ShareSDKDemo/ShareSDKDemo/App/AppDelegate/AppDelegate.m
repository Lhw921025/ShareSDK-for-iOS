//
//  AppDelegate.m
//  ShareSDKDemo
//
//  Created by youzu on 17/3/6.
//  Copyright © 2017年 mob. All rights reserved.
//

#import "AppDelegate.h"
#import "MobScreenshotCenter.h"
#import <MOBFoundation/MobSDK.h>
#import <WechatConnector/WechatConnector.h>
#import <ShareSDKExtension/ShareSDK+Extension.h>
#import <ShareSDKExtension/SSEFriendsPaging.h>
#import <objc/message.h>
#import <Bugly/Bugly.h>
@interface AppDelegate () <ISSERestoreSceneDelegate>

@end


@implementation AppDelegate 

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [ShareSDK setRestoreSceneDelegate:self];
    //    [WeChatConnector setLang:@"zh_CN"];
    //SLComposeViewController *composeVc = [SLComposeViewController composeViewControllerForServiceType:@""];
    //开启截屏分享监听 与ShareSDK本身无关
    [[MobScreenshotCenter shareInstance] start];
    //    [MobSDK setInternationalDomain:MOBFSDKDomainTypeUS];
 
    /*注册见类MOBShareSDKHelper*/
    //Demo中使用了 MOBShareSDKHelper 进行注册 使用方法位直接加入工程就可以
    //MOBShareSDKHelper.h 中进行修改来设置使用的平台 及 各平台的参数
//
    
    //    [ShareSDK registPlatforms:^(SSDKRegister *platformsRegister) {
    //        [platformsRegister setupQQWithAppId:@"1111111" appkey:@"2222222"];
    //        [platformsRegister setupWeChatWithAppId:@"333333" appSecret:@"444444"];
    //        [platformsRegister setupSinaWeiboWithAppkey:@"568898243" appSecret:@"38a4f8204cc784f81f9f0daaf31e02e3" redirectUrl:@"http://www.sharesdk.cn"];
    //        [platformsRegister setupFacebookWithAppkey:@"1412473428822331" appSecret:@"a42f4f3f867dc947b9ed6020c2e93558" displayName:@"shareSDK"];
    //        [platformsRegister setupTwitterWithKey:@"0000000" secret:@"999999" redirectUrl:@"http://vvvv"];
    //        [platformsRegister setupInstagramWithClientId:@"ff68e3216b4f4f989121aa1c2962d058" clientSecret:@"1b2e82f110264869b3505c3fe34e31a1" redirectUrl:@"http://sharesdk.cn"];
    //        [platformsRegister setupDingTalkWithAppId:@"dingoabcwtuab76wy0kyzo"];
    //        [platformsRegister setupAliSocialWithAppId:@"2017062107540437"];
    //        [platformsRegister setupDouBanWithApikey:@"02e2cbe5ca06de5908a863b15e149b0b" appSecret:@"9f1e7b4f71304f2f" redirectUrl:@"http://www.sharesdk.cn"];
    //        [platformsRegister setupDropboxWithAppKey:@"us514wslpfojbxc" appSecret:@"w0nmp4os3ngo1ja" redirectUrl:@"http://localhost"];
    //        [platformsRegister setupYiXinByAppId:@"yx0d9a9f9088ea44d78680f3274da1765f" appSecret:@"1a5bd421ae089c3" redirectUrl:@"https://open.yixin.im/resource/oauth2_callback.html"];
    //        [platformsRegister setupFlickrWithApiKey:@"cbed81d4a1bc7417693ab7865e354717" apiSecret:@"4c490343869091f2"];
    //        [platformsRegister setupInstapaperWithConsumerKey:@"4rDJORmcOcSAZL1YpqGHRI605xUvrLbOhkJ07yO0wWrYrc61FA" consumerSecret:@"GNr1GespOQbrm8nvd7rlUsyRQsIo3boIbMguAl9gfpdL0aKZWe"];
    //        [platformsRegister setupLineAuthType:SSDKAuthTypeBoth];
    //        [platformsRegister setupEvernoteByConsumerKey:@"46131514-6903" consumerSecret:@"08d7a6f3afcc888a" sandbox:YES];
    //        [platformsRegister setupKaKaoWithAppkey:@"9c17eb03317e0e627ec95a400f5785fb" restApiKey:@"802e551a5048c3172fc1dedaaf40fcf1" redirectUrl:@"http://www.mob.com/oauth"];
    //        [platformsRegister setupVKontakteWithApplicationId:@"5312801" secretKey:@"ZHG2wGymmNUCRLG2r6CY" authType:SSDKAuthTypeBoth];
    //        [platformsRegister setupYouTubeWithClientId:@"906418427202-jinnbqal1niq4s8isbg2ofsqc5ddkcgr.apps.googleusercontent.com" clientSecret:@"" redirectUrl:@"http://localhost"];
    //        [platformsRegister setupMeiPaiWithAppkey:@"1089867639"];
    //        [platformsRegister setupTencentWeiboWithAppkey:@"801307650" appSecret:@"ae36f4ee3946e1cbb98d6965b0b2ff5c" redirectUrl:@"http://www.sharesdk.cn"];
    //
    //        [platformsRegister setupRenRenWithAppId:@"226427" appKey:@"fc5b8aed373c4c27a05b712acba0f8c3" secretKey:@"f29df781abdd4f49beca5a2194676ca4" authType:SSDKAuthTypeBoth];
    //        [platformsRegister setupCMCCByAppId:@"300011862498" appKey:@"38D9CA1CC280C5F207E2C343745D4A4B" displayUI:YES];
    //        [platformsRegister setupYouDaoNoteWithConsumerKey:@"dcde25dca105bcc36884ed4534dab940" consumerSecret:@"d98217b4020e7f1874263795f44838fe" oauthCallback:@"http://www.sharesdk.cn/"];
    //    }];
    
    //    // 测试Twitter好友列表
    //    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //        [ShareSDK getFriends:SSDKPlatformTypeTwitter cursor:-1 size:40 onStateChanged:^(SSDKResponseState state, SSEFriendsPaging *paging, NSError *error) {
    //            NSLog(@"state:%d",state);
    //            NSLog(@"paging.user.count:%d",paging.users.count);
    //            NSLog(@"paging.nextCursor:%lld",(long long)paging.nextCursor);
    //            NSLog(@"paging.hasNext:%d",paging.hasNext);
    //        }];
    //    });
    
    // 加入Bugly来统计Demo异常情况
    [Bugly startWithAppId:@"b319f530b6"];
    //由于iOS13此方法加载时并没有加载window，下面的方法可以将在此处理window相关问题延迟到window加载之后
    [[MOBApplication sharedApplication] addBeforeWindowEvent:^(MOBApplication * _Nonnull application) {
        application.window.backgroundColor = [UIColor whiteColor];
    }];
 
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options{
//    UISceneConfiguration *c =[[UISceneConfiguration alloc] initWithName:@"aa" sessionRole:connectingSceneSession.role];
//    c.delegateClass = NSClassFromString(@"SceneDelegate");
//    c.storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    return c;
//}

#pragma mark - ISSERestoreSceneDelegate

/**
 闭环分享代理回调
 
 */
- (void)ISSEWillRestoreScene:(SSERestoreScene *)scene error:(NSError *)error{
    
    Class sceneClass = NSClassFromString(scene.className);
    if (sceneClass) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        UIViewController *sceneVC = [[sceneClass alloc] performSelector:sel_registerName("initWithShareSDKScene:") withObject:scene];
#pragma clang diagnostic pop
        [[MOBApplication sharedApplication] addBeforeWindowEvent:^(MOBApplication * _Nonnull application) {
            UINavigationController *nav = (UINavigationController *)application.window.rootViewController;
            /**
             在这里有一种情况是：
             在分享shareLink页面后，不过不返回app，直接在qq中打开sharelink页面，在返回到demo时，会先模态推出一个UIAlertController，在此情况下，如果导航控制器push或pop或setViewControllers都不会有任何效果，会报
             ‘while an existing transition or presentation is occurring; the navigation stack will not be updated.’错误，所以在此处加了判断，如果当前导航控制器当前推出了UIAlertController，那么我们就在UIAlertController销毁后才执行push或其他操作，否则直接push或其他操作。
             */
            if ([nav.visibleViewController isKindOfClass:[UIAlertController class]]) {
                __weak typeof (nav)weakNav = nav;
                [nav.visibleViewController mob_addDellocTask:^(id  _Nonnull object) {
                    [weakNav pushViewController:sceneVC animated:YES];
                }];
            }else{
                [nav pushViewController:sceneVC animated:YES];
            }
        }];
    }
}

@end