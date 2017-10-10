
//To Calculate the Amount of Time for Cooling

//Example 28.5

clear;

clc;

T1=70;//Initial Temperature in degree Celsius in First Case

T2=60;//Final Temperature in degree Celsius in First Case

Tav=(T1+T2)/2;//Average Temperature in First Case

Ts=30;//Temperature of Surrounding in degree Celsius

Tdif1=Tav-Ts;//Average Temperature Difference from Surrounding in first case

t=5;//Time taken for cooling from 70 deg Celsius to 60 deg Celsius

Rt=(T1-T2)/t;//Rate of fall of Temperature

bA=Rt/Tdif1;//Product of Wein Constannt and Area

T3=60;//Initial Temperature in degree Celsius in second case

T4=50;//Final Temperature in degree Celsius in second case

Tdif2=T3-T4;//Change in Temperature in second case

Tav1=(T3+T4)/2;//Average Temperature in second case

Tdif3=Tav1-Ts;//Average Temperature Difference from Surrounding in second case

t1=Tdif2/(bA*Tdif3);//Time taken by the liquid to cool

printf("Time taken by the liquid to cool=%d min",t1);
