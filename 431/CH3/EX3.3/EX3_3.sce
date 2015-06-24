//calculating induced emf and maximium flux density
//Chapter 3
//Example 3.3
//page 197
clear;
clc; 
disp("Example 3.3")
V1=230;                //primary voltage in volts
f=50;                    //frequency in hertz
N1=100;                  //number of primary turns
N2=400;                  //number of secondary turns
A=250*10^(-4);            //cross section area of core in m^2
disp("since at no-load E2=V2")
E2=(V1*N2)/N1;
printf("induced secondary winding,E2=%dV",E2);
phi=E2/(4.44*f*N2);
Bm=phi/A;
printf("\nMaximium flux density in the core=%fWb/m^2",Bm)