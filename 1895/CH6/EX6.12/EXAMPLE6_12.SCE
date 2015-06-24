//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.12(PAGENO 307)");

//given
f_1 = 18*10^6//lower operating frequency in Hz
f_2 = 20*10^6//lower operating frequency in Hz
T = 273 + 17//temperature in kelvin
R = 10*10^3//input resistance
k = 1.38*10^-23//boltzman's constant

//calculations
B = f_2 - f_1//bandwidth in Hz
V_n = sqrt(4*k*B*R*T);//rms noise voltage

//results
printf("\n\nrms noise voltage = %.10f V",V_n);
