//
//  doctor.h
//  patient-doctor
//
//  Created by Arsalan Vakili on 2015-06-11.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface doctor : NSObject
@property (nonatomic,strong) NSString *Doctorname;
@property(nonatomic,strong) NSString *Specialization;
@property(nonatomic,strong) NSMutableArray *patientsAccepted;
@property(nonatomic, strong) NSDictionary *prescriptions;
@property(nonatomic, strong) NSString *medicationRequest;

-(void) intakePatients: (Patient *) newpatient;
-(void) intakeallPatients: (NSArray *) patientlist;
//-(NSString *) medicationback:(Patient *) newpatient;


@end
