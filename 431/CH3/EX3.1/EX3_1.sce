//calculating number of turns,primary and secondary currents and value of flux
//Chapter 3
//Example 3.1
//page 196
clear;
clc; 
disp("Example 3.1")
kVA=500;                //rating
V1=11000;                //primary voltage in volts
V2=400;                  //secondary voltage in volts
N2=100;                  //number of turns in secondary winding
f=50;                    //frequency in hertz
N1=(V1*N2)/V2;            //number of turns in primary winding
printf("number of turns in primary  winding,N1=%dturns",N1)
I1=(kVA*1000)/V1;
I2=(kVA*1000)/V2
printf("\nprimary current,I1=%fA",I1)
printf("\nsecondary current,I2=%fA",I2)
E1=V1;
phi=E1/(4.44*f*N1)
printf("\nmaximium flux in the core=%fWb",phi)