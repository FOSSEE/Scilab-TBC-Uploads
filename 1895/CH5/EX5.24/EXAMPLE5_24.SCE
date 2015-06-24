//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.24(PAGENO 252)");

//given
//we know that s(t) = A*cos((2*%pi*f_c*t) + m_f*sin(2*%pi*f_m*t ))
f_c = 1*10^6//modulation frequency
A = 3//carrier amplitude in volts
//first case
A_m = 1//modulating amplitude in volts for first case
delta_f = 1*10^3//frequency deviation
f_m1 = 1//modulating frequencyof first case
//second case
f_m2 = 2*10^3//modulating frequency for second case
A_m2 = 5//modulating amplitude for second case

//calculations
k_f  = delta_f/f_m1//frequency sensitivity in hertz per volt
m_f = (delta_f*A_m2)/f_m2//modulating frequency
//desired FM signal can be expressed by s(t) = A*cos((2*%pi*f_c*t) + m_f*sin(2*%pi*f_m*t ))
//results
//standard FM signal expression is as follows
//s(t) = A*cos(2*%pi*f_c*t + m_f * sin(2*%pi*f_m*t))
printf("\n\nFrequency sensitivity k_f = %.2f",k_f);
printf("\n\nModulation index m_f =%.2f ",m_f);

disp("s(t)=3*cos(2*%pi*10^6*t + 2.5*sin(2*%pi*2*10^3*t)");
