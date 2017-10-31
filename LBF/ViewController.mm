//
//  ViewController.m
//  LBF_TEST
//
//  Created by Mamunul on 10/21/17.
//  Copyright © 2017 Mamunul. All rights reserved.
//
#include "LBF.h"
#import "ViewController.h"


using namespace std;

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	// Do any additional setup after loading the view.
	
	[self startTraining];
}


-(void)startTraining{
	std::vector<std::string> trainDataName;
	extern string modelPath;
	extern string dataPath;
	extern string folderPath;

	dataPath = "";
	modelPath = "/Users/mamunul/Downloads/Shape_Prediction_Database/lbf/";
	folderPath = "/Users/mamunul/Downloads/Shape_Prediction_Database/";


	trainDataName.push_back("helen/trainset");
	trainDataName.push_back("lfpw/trainset");
	trainDataName.push_back("afw");
	InitializeGlobalParam();
	TrainModel(trainDataName,folderPath);
}

- (void)setRepresentedObject:(id)representedObject {
	[super setRepresentedObject:representedObject];

	// Update the view, if already loaded.
}


@end
