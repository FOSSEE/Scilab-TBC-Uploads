//example-22.2
//page no-660
//given
//critical  temp of Pb
T0=7.17  //K
//critical field
H0=0.0803  //A/m
//to find the critical field at 
T1=3 //K
T2=10  //K
//critical field at T1
Hc1=H0*(1-T1^2/T0^2)  //A/m
//critical field at T2
Hc2=H0*(1-T2^2/T0^2)  //A/m
printf ("the critical field at 3K temp is %f A/m and at 10K ia %f A/m",Hc1,Hc2)
