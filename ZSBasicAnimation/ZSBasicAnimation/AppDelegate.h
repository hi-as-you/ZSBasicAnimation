//
//  AppDelegate.h
//  ZSBasicAnimation
//
//  Created by IOSer2 on 2020/12/7.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

