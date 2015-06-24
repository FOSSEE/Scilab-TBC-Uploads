//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.7(PAGENO 56)");

//given v_c = 10*sinwt

m = .5//modulation index
//by comparing with v_c = V_c*sinwt
V_c = 10//carrier voltage in volts

//calculation
V_m = m*V_c;//amplitude of modulating index
V_max = V_c + V_m;//maximum voltage
V_min = V_c - V_m;//minimum voltage

//results
printf("\n\n i.Modulating  voltage = %.2f V",V_m); 
printf("\n\n ii. Maximum voltage = %.2f V",V_max); 
printf("\n\n iii.Minimum voltage = %.2f V",V_min); 
