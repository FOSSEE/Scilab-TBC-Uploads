//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.32(PAGENO 258)");

//given
m_f = .2//modulation index
P = 10*10^3//power of FM transmitter
J_0m_f = 0.99//bessel function
J_1m_f =0.099

//calculations
P_c = (J_0m_f)^2 * P//carrier power
P_s1 = (J_1m_f)^2 * P//power in each side frequency
P_s2 = P_s1

//results
printf("\n\ni.Carrier power = %.2f W",P_c);
printf("\n\nii.power in each side band = %.2f W",P_s1);
