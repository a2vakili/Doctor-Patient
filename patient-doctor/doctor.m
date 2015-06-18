//
//  doctor.m
//  patient-doctor
//
//  Created by Arsalan Vakili on 2015-06-11.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "doctor.h"
#import "Patient.h"
@implementation doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        // set all properties that need to be available throughout the objects lifetime.
        // so: dictionary of medications, array of patients. others if needed.
        
        _prescriptions =@{@"alzhaimer": @"Butonal",
                          @"tumor": @"not much you can do",
                          @"headache": @"tylenol",
                          @"backDisk": @"aargngfngnje"};
       
                          
    }
    return self;
}


-(void) intakePatients: (Patient *) newpatient{
    
    
    
        if([newpatient PatientHasHealthCard]){
        [self.patientsAccepted addObject:newpatient];
        NSLog (@"Hello %@, welcome to my Clinic", newpatient.patientName);
        NSLog (@"What symptom do you have?");
            NSString *drug= [_prescriptions objectForKey:newpatient.symptom];
            if (drug) {
                NSLog(@"the prescribed drug for you is %@",drug);
            }
            else
                NSLog(@"Unfortunately, your symptom does not match our record");
    
            }
        

      
    else
        NSLog(@"Hello %@, Im sorry but you need a health card", newpatient.patientName);
}


-(void) intakeallPatients: (NSArray *) patientlist{
    for (Patient *patient in patientlist){
        [self intakePatients:patient];
    }
}
   
@end
