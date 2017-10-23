//
//  ViewController.m
//  LBF_TEST
//
//  Created by Mamunul on 10/21/17.
//  Copyright © 2017 Mamunul. All rights reserved.
//
#include "LBF.h"
#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	std::vector<std::string> testDataName;
	
	NSString *p = [[NSBundle mainBundle] resourcePath];
	testDataName.push_back("02_Outdoor");
	
//	NSString *path = [[NSBundle mainBundle] pathForResource:@"Dataset/ibug/Path_Images" ofType:@"txt"];
	

	std::string folderPath = [p UTF8String];
	
//	NSData *a = [[NSData alloc] initWithContentsOfFile:path];
	
//	NSLog(@"%@,%@",path,p);
	//   testDataName.push_back("helen");
	
	std::string modelPath = [[[[NSBundle mainBundle] resourcePath] stringByAppendingString:@"/model_69/LBF.model"] UTF8String];
	
	ReadGlobalParamFromFile(modelPath);
	double MRSE = TestModel(testDataName,folderPath);

	// Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
	[super setRepresentedObject:representedObject];

	// Update the view, if already loaded.
}


@end
