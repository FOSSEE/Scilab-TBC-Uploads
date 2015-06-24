
//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.3(PAGENO 282)");

//given
R_1 = 20*10^3//resistance one
R_2 = 50*10^3//resistance two
T = 273+15//temperature in kelvin
B = 100*10^3//bandwidth
k = 1.38*10^-23//boltzman's constant

//calculations
R_s = R_1 +R_2//series effective resistance
R_p = (R_1*R_2)/(R_1 + R_2)//parallel effective resistance
V_1 = sqrt(4*k*T*R_1*B)//noise voltage in R_1
V_2 = sqrt(4*k*T*R_1*B)//noise voltage in R_2
V_s = sqrt(4*k*T*R_s*B)//noise voltage when resistance connected in series
V_p = sqrt(4*k*T*R_p*B)//noise voltage when resistance connected in parallel

//results
printf("\n\ni.Noise voltage due to R_1 = %.10f V",V_1);
printf("\n\nii.Noise voltage due to R_2 = %.10f V",V_2);
printf("\n\niii.Noise voltage due to two resistance in series = %.10f V",V_s);
printf("\n\niv.Noise voltage due to two resistance in parallel = %.10f V",V_p);
