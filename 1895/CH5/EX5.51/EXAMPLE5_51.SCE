//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.51(PAGENO 266)");

//given
f_c = 108*10^6//carrier frequency
f_1 = 2*10^5//crystal oscillator frequency
beta = .2//phase deviation
f_m = 50//minimum frequency 
delta_f = 75*10^3//frequency deviation
n_2 = 150

//calculations
delta_f1 = beta * f_m;
n_12 = delta_f /delta_f1;
//f_2 = n_1*f_1 = n_1 * 2*10^5Hz
//assuming down convertions, we have
//f_2 - f_LO = (f_c/n_2)
//thus
f_LO = ((n_12*f_1) - f_c)/n_2;
n_1 = n_12/n_2

//results
printf("\n\n n_1 = %.2f",n_1)
printf("\n\n Mixer oscillator frequency= %.2f hz",f_LO);
