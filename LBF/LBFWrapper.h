//
//  LBFWrapper.h
//  LBF
//
//  Created by Mamunul on 10/23/17.
//  Copyright © 2017 Mamunul. All rights reserved.
//

#include "LBF.h"
#import <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <VideoToolbox/VideoToolbox.h>

@interface LBFWrapper : NSObject

- (instancetype)initWithResourcePath:(NSString *)path;
-(cv::Mat_<double>) PredictShape:(cv::Mat) image Path:(std::string) _resourcePath FaceRect:(BoundingBox) bounding_box;

@end
