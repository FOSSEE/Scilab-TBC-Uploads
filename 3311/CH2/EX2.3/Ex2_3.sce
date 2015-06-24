// chapter 2
// example 2.3
// fig. E2.3
// Compute average power loss
// page-22-23
clear;
clc;
// given
Beta1=180, Beta2=360; // in degrees (conduction angles)
Iav=100; // in A (average current)
// calculate
// since Iav=Im*Beta/360, therefore
Im1=Iav*360/Beta1; // calculation of current during 180 conduction
V_T1= 1.8; // in V (given corresponding to value of Im1)
Pavg1=V_T1*Im1*(Beta1/360); // calculation of average power loss during 180 conduction
printf("\nThe average power loss during %.f conduction is %.f W",Beta1,Pavg1);
Im2=Iav*360/Beta2; // calculation of current during 360 conduction
V_T2= 1.5; // in V (given corresponding to value of Im2)
Pavg2=V_T2*Im2*(Beta2/360); // calculation of average power loss during 360 conduction
printf("\n\nThe average power loss during %.f conduction is %.f W",Beta2,Pavg2);
