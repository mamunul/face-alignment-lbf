//
//  LBFWrapper.h
//  LBF
//
//  Created by Mamunul on 10/23/17.
//  Copyright © 2017 Mamunul. All rights reserved.
//

#include "LBF.h"
#import <opencv2/opencv.hpp>
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
	#import <opencv2/imgcodecs/ios.h>
#elif TARGET_OS_MAC
#endif

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <VideoToolbox/VideoToolbox.h>

@interface LBFWrapper : NSObject

- (instancetype)initWithResourcePath:(NSString *)path;
-(cv::Mat_<double>) PredictShape:(cv::Mat) image Path:(std::string) _resourcePath FaceRect:(BoundingBox) bounding_box;

@end
