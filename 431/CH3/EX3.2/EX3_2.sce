//calculating number of primary and secondary turns
//Chapter 3
//Example 3.2
//page 196
clear;
clc; 
disp("Example 3.2")
V1=6600;                //primary voltage in volts
V2=230;                  //secondary voltage in volts
f=50;                    //frequency in hertz
Bm=1.1;                    //flux density in Wb/m^2
A=(25*25*10^(-4));         //area of the core in m^2
phi=Bm*A
printf("flux=%fWb",phi)
E1=V1;
E2=V2;
N1=E1/(4.44*f*phi);
N2=E2/(4.44*f*phi);
printf("\nnumber of turns in primary winding,N1=%dturns",N1)
printf("\nnumber of turns in secondary winding,N2=%dturns",N2)