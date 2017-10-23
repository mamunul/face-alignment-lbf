//
//  LBFWrapper.m
//  LBF
//
//  Created by Mamunul on 10/23/17.
//  Copyright © 2017 Mamunul. All rights reserved.
//

#import "LBFWrapper.h"
#include "LBFRegressor.h"

@interface LBFWrapper (){

	LBFRegressor *regressor;
}

@end

@implementation LBFWrapper

- (instancetype)initWithResourcePath:(NSString *)path
{
	self = [super init];
	if (self) {
		
		extern std::string modelPath;
		extern std::string folderPath;
		
		folderPath = [path UTF8String];
		
		ReadGlobalParamFromFile(folderPath+modelPath+"LBF.model");
		
		regressor = new LBFRegressor();
		
		
		regressor->Load(folderPath+modelPath+"LBF.model");
		
	}
	return self;
}

-(cv::Mat_<double>) PredictShape:(cv::Mat) image Path:(std::string) _resourcePath FaceRect:(BoundingBox) bounding_box{

	cv::Mat_<double> shape = regressor->Predict(image, bounding_box, 0);
	
	for(int j = 0;j < global_params.landmark_num;j++){
		circle(image,cv::Point2d(shape(j,0),shape(j,1)),5,cv::Scalar(255,255,255),-1,8,0);
	}
	//
	return shape;
	
}

@end
