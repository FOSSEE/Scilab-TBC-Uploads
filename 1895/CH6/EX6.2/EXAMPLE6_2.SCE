//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.2(PAGENO 281)");

//given
R_1  = 300//equivalent noise resistance
R_2 = 400//input resistance
T = 273+27//temperature in kelvin
B = 7*10^6//bandwidth
k = 1.38*10^-23//boltzman's constant

//calculations
R_s = R_1 +R_2//effective resistance in series
V_nr = sqrt(4*k*T*B*R_s)//rms noise voltage

//result 
printf("\n\nRms noise voltage = %.10f V",V_nr)
