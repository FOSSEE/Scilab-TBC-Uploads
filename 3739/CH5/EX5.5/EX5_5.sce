//Chapter 5, Example 5.5, page 196
clc
//Initialisation
f1=2.5                                  //frequency in MHz
f2=6.3                                  //frequency in MHz
K=1.1                                   // K factor

//Calculation
fse=1.05*f1*2                                 //frequency in MHz                        
fsf=K*f2*2                                 //frequency in MHz

//Results
printf("Frequency for E layer = %.2f MHz",fse)
printf("\nFrequency for F layer = %.2f MHz",fsf)
