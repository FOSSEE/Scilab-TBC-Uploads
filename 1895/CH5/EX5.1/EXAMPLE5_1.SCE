//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.1(PAGENO 198)");

//given
t = [0:.1:10];//time period
R = 10//resistance in ohms
printf("\n\nv(t) = 12*cos(6*10^8*t + 5*sin(1250*t));");
printf("\n\nv(t) = A*cos(w_c*t + m_f*sin(w_m*t))");
//by comparing with standard 
A = 12//amplitude voltage in volts
w_c= 6*10^8//angular carrier frequency in rad/sec
w_m = 1250//angular modulating frequency in rad/sec
m_f = 5//modulation index

//calculations
f_c =  w_c/(2*%pi)//carrier frequency
f_m = w_m/(2*%pi)//modulating frequency
deltaf = m_f*f_m//maximum deviation
V_rms = (A/sqrt(2))^2//rms volatage
P = V_rms/R//power dissipatted

//results
printf("\n\n i. Carrier frequency = %.2f Hz",f_c);
printf("\n\nii. Modulation frequency = %.2f Hz",f_m);
printf("\n\niii. Modulation index = %.2f",m_f);
printf("\n\niv.Maximum frequency deviation = %.2f Hz", deltaf);
printf("\n\nv.Power dissipated = %.2f W ",P);
