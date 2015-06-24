//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.16(PAGENO 221)");

//given
//first case
f_c1 = 20*10^6//carrier frequency
f_m1 = 400//modulation frequency
V_c = 5//carrier voltage in volts
deltaf = 10*10^3//frequency deviation
//second case
f_m2 = 2*10^3//modulation frequency

//calculations
w_c1 = 2 *%pi *f_c1//angular carrier freqency
w_m1 = 2 *%pi *f_m1//angular carrier freqency
m_f1 = deltaf/f_m1//modulation index for first case
m_f2 = deltaf/f_m2//modulation index for second case

//results
//standard format of fm and pm equations are
//s(t) = V_c8sin(w_c*t + m_f*sin(w_m*t))
printf("\n\n(i)FM wave:s(t) = 5*sin(1.25*10^8*t + 25*sin(2513*t)");
printf("\n\n(ii)PM wave:s(t) = 5*sin(1.25*10^8*t + 25*sin(2513*t)");
