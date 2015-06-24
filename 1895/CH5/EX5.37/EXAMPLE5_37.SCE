//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.37(PAGENO 260)");

//given
// s(t) = 20*sin(6*10^8*t + 7*sin(1250*t))
//comparing with standard eqn s(t) = A*sin(w_c*t + m_f*sin(w_m*t))
//we get 
w_c = 6*10^8//carrier angular frequency in rad/sec
w_m = 1250//modulating angular frequency in rad/sec
m_f = 7//modualation index
A = 20//amplitude of modulated wave
R = 100//resistance

//calculations
f_c = w_c/(2*%pi)//carrier frequency in hertz
f_m = w_m/(2*%pi)//modulating frequency in hertz
delta_f = m_f*f_m//frequency deviation
P = (A/sqrt(2))^2/R//power dissipated

//results
printf("\n\ni.Carrier frequency  = %.2f Hz ",f_c);
printf("\n\nii.Modulating frequency  = %.2f Hz ",f_m);
printf("\n\niii.Modulation index = %.2f ",m_f);
printf("\n\niv.Frequency deviation = %.2f Hz",delta_f);
printf("\n\nv.Power dissipated by FM wave = %.2f W",P);
