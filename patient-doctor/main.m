//
//  main.m
//  patient-doctor
//
//  Created by Arsalan Vakili on 2015-06-11.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "doctor.h"

int main(int argc, const char * argv[]) {
    
    Patient *patient1 = [[Patient alloc] init];
    Patient *patient2= [[Patient alloc]init];
    Patient *patient3= [[Patient alloc] init];
    Patient *patient4= [[Patient alloc] init];
    Patient *patient5= [[Patient alloc] init];
    patient1.patientName = @"joe";
    patient2.patientName= @"bobby";
    patient3.patientName= @"Rick";
    patient4.patientName= @"Jane";
    patient5.patientName= @"amanda";
    
    patient1.symptom= @"brain tumor";
    patient2.symptom= @"Alzhaimer";
    patient3.symptom= @"tumor";
    patient4.symptom= @"backDisk";
    patient5.symptom= @"brainproblem";
    [patient1 setAge:29];
    [patient2 setAge: 34];
    NSLog(@"The patient name is %@\n ", patient1.patientName);
    NSLog(@"The patient's age is %d\n", patient1.age);
    
    doctor *myDoctor= [[doctor alloc] init];
    myDoctor.Doctorname= @"Dr Phil";
    myDoctor.Specialization= @"Neurosurgeon";
    NSLog(@"Doctor's name is %@", myDoctor.Doctorname);
    NSLog(@" The Doctor is %@",myDoctor.Specialization);
    NSLog(@"the patient's symptom is %@", patient1.symptom);
    
    patient1.healthcardnumber= @"1233343";
    patient2.healthcardnumber= nil;
    patient3.healthcardnumber= @"434334";
    patient4.healthcardnumber= @"43234";
    patient5.healthcardnumber= nil;
    
    
    
[myDoctor intakeallPatients: @[patient1,patient2,patient3,patient4,patient5]];
    
  
    
    
    
    
    
    
    
    
    




    
    
    
    
    
    return 0;
}
