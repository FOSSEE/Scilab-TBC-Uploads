//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.1(PAGENO 281)");

//given
R = 10*10^3//resistance of amplifier in ohms
T = 273+27//temperature in kelvin
B = (20-18)*10^6//bandwidth
k = 1.38*10^-23//boltzman's constant

//calculations
V_n = sqrt(4*R*k*T*B);//rms noise voltage

//result
printf("\n\nRms noise voltage = %.10f V",V_n);
