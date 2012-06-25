//
//  Detail.h
//  guide
//
//  Created by Anna Billstrom on 6/25/12.
//  Copyright 2012 Momentus Media. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Detail : UIViewController {
    NSString *program;
    IBOutlet UILabel *programL;
    IBOutlet UIImageView *detailImage;
}

@property (nonatomic, retain) NSString *program;
@property (nonatomic, retain) IBOutlet UILabel *programL;
@property (nonatomic, retain) IBOutlet UIImageView *detailImage;

@end
