//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.23(PAGENO 251)");

//given
disp('modulated carrier waveform is given by s(t) = A*sin((2*%pi*f_c*t)+m_f*sin(2*%pi*f_m*t))');
f_c = 100*10^6//carrier frequency in hertz
delta_f = 75*10^3//frequency deviation in hertz
f_m = 2*10^3//modulating frequency
A = 5//peak voltage of carrier wave

//calculation
m_f = delta_f/f_m;//modulation index

//result
printf("\n    Modulation index =%.2f",m_f);
disp("Equation for modulated carrier waveform s(t) = 5*sin((2*%pi*100*10^6*t)+37.5*sin(2*%pi*2*10^3*t))");
