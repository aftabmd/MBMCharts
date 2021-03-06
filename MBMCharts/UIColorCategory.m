//
//  UIColorCategory.m
//
//  Created by Pat Murphy on 12/13/12.
//  Copyright (c) 2012 Pat Murphy. All rights reserved.
//

#import "UIColorCategory.h"


@implementation UIColor (Category)

+(UIColor*)colorWithHexRGB:(NSString*)hexRGB  AndAlpha:(float)alpha
{
	NSRange range;
	range.location = 0;
	range.length = 2;
	NSString *rString = [hexRGB substringWithRange:range];
	range.location = 2;
	NSString *gString = [hexRGB substringWithRange:range];
	range.location = 4;
	NSString *bString = [hexRGB substringWithRange:range];
	unsigned int r, g, b;
	[[NSScanner scannerWithString:rString] scanHexInt:&r];
	[[NSScanner scannerWithString:gString] scanHexInt:&g];
	[[NSScanner scannerWithString:bString] scanHexInt:&b];
	
	return [UIColor colorWithRed:((float) r / 255.0f)
						   green:((float) g / 255.0f)
							blue:((float) b / 255.0f)
						   alpha:alpha];
}

@end
