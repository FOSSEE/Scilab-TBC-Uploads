//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.35(PAGENO 259)");

//given
CS = 125*10^3//carrier swing

//calculations
delta_f = CS/2//frequency deviation
//since,maximum frequency deviation for the FM broadcast band is 75 KHz, therefore 
f_m = 75*10^3//modulating frequency
m_f = delta_f*100/f_m//modulation index

//result
printf("\n\nPercentage modulation index = %.2f  percent",m_f); 
