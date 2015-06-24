// Example 7.18
clc;
clear;
close;
// Given data
format('v',6);
R_A= 2.2*10^3;// in Ω
R_B= 1.2*10^3;// in Ω
Rf= 4.7*10^3;// in Ω
C= 0.01*10^-6;// in F
k_lp= 1.238;
k_hp= 1/k_lp;
// Part (i)
alpha= 3*R_B/(R_A+R_B);
disp(alpha,"Part (i) : The value of alpha is : ");
disp("Given filter is 1db peak Chebyshev");

// Part (ii)
f_0= 1/(2*%pi*Rf*C);//critical frequency in Hz
f_0= f_0*10^-3;// in kHz
f_low_pass= f_0*k_lp;// in kHz
disp(f_low_pass,"Part (ii) : The low-pass frequency in kHz is : ")
f_high_pass= f_0*k_hp;// in kHz
disp(f_high_pass,"The high-pass frequency in kHz is : ")

// Part (iii)
fc= f_0;// bandpass centre frequency in kHz
disp(fc,"Part (iii) : The bandpass centre frequency in kHz is : ")

// Part (iv)
// Formula used : delta_f= fc/Q= fc/(1/alpha)
delta_f= fc/(1/alpha);// in kHz
disp(delta_f,"Part (iv) : The bandpass width in kHz is : ")

// Part (v)
A0= 1/alpha;// bandpass gain at centre frequency
disp(A0,"Part (v) : The bandpass gain at centre frequency is : ")









