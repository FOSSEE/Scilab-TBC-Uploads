//Example 7_5_u2
clc();
clear;
//To find the hall voltage
e=1.6*10^-19    //units in coulombs
n=10^16         //units in no of atoms for cm^-3
Rh=-1/(e*n)         //units in cm^3/C
i=1            //units in milli amperes
i=i*10^-3          //units in amperes
Bz=10^-4      //units in wb/cm^2
a=2.5*10^-3      //units in cm^2
w=500*10^-4            //units in micro cm
Vh=((Rh*i*Bz)/a)*w       //units in V
Vh=Vh*10^3                //units in mV
printf("The hall voltage is Vh=%.5f mV",Vh)
