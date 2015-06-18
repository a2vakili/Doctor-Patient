//
//  Patient.h
//  patient-doctor
//
//  Created by Arsalan Vakili on 2015-06-11.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
@class doctor;

@interface Patient : NSObject

@property(nonatomic,strong) NSString *patientName;
@property int age;
@property(nonatomic,strong) NSString *healthcardnumber;
@property(nonatomic,strong) NSString *symptom;

-(BOOL ) PatientHasHealthCard;
-(void ) requestMedication:(doctor *) medicine;


@end
