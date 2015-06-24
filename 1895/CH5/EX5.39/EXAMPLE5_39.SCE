//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.39(PAGENO 261)");

//given
//x_c(t) = 10*cos[(10^8*%pi*t) + 5*sin(2*%pi*10^3)t]
//by comparing the given x_c(t) with standard FM wave equation
t=[1:1:10];
w_c = 10^8//carreier frequency
phi_t = 5*sin(2*%pi*10^3*t);
phi_1t = 5*2*%pi*10^3*cos(2*%pi*10^3*t)
//Therefore, the maximum phase deviation will be
phi_tmax = 5//radians

//calculation
delta_f = (5*10^3*2*%pi)/(2*%pi);//maximum frequency deviation

//results
printf("\n\nMaximum frequency deviation is %.2f Hz",delta_f);
