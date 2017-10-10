//Example 3_4
clc();
clear;
//To find the minimum thickness of half wave and quarter wave plates 
lemda=589.3*10^-9                    //units in meters
u0=1.65833
ue=1.48640
t1=lemda/(2*(u0-ue))
printf("thickness of half wave plate is %.7f mm",t1)
t2=lemda/(4*(u0-ue))
printf("\n thickness of quarter wave plate is %.8f mm",t2)
printf("\n \n the minimum thickness of wave plate is %.7f mm",t1)
