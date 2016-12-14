//
//  NoteBookData.h
//  iNote
//
//  Created by scrovor on 2016/12/7.
//  Copyright © 2016年 scrovor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NoteBookData : NSObject<NSCoding>

@property(strong) NSString *title;
@property(strong) NSString *content;
@property(strong) NSDate *date;



@end
