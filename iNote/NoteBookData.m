//
//  NoteBookData.m
//  iNote
//
//  Created by scrovor on 2016/12/7.
//  Copyright © 2016年 scrovor. All rights reserved.
//

#import "NoteBookData.h"

@implementation NoteBookData

- (void) encodeWithCoder:(NSCoder *)aCoder{
   [aCoder encodeObject:self.title forKey:@"title"];
   [aCoder encodeObject:self.content forKey:@"content"];
   [aCoder encodeObject:self.date forKey:@"date"];
}
-(id) initWithCoder:(NSCoder *)aDecoder{
    self.title = [aDecoder decodeObjectForKey:@"title"];
    self.content = [aDecoder decodeObjectForKey:@"content"];
    self.date = [aDecoder decodeObjectForKey:@"date"];
    return self;
}

@end
