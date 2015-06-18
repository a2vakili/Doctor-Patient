//
//  Patient.m
//  patient-doctor
//
//  Created by Arsalan Vakili on 2015-06-11.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "Patient.h"
#import  "doctor.h"

@implementation Patient



-(BOOL) PatientHasHealthCard {

    if(self.healthcardnumber != nil){
        return true;
    }
    else
        return false;
}


-(void) requestMedication:(doctor *) doctor{
    
    NSLog(@"Hello %@, my symptom is %@", doctor.Doctorname, self.symptom);
    
    
    }






@end
