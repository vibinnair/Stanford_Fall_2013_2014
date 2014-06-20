//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Vibin Nair on 20/06/14.
//  Copyright (c) 2014 Vibin Nair. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView
@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) BOOL faceUp;
@end
