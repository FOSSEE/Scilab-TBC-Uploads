//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.12(PAGENO 219)");

//given
//given that v = 10*sin((5 * 10^8 *t) + 4*sin(1250*t))
//by comparing with standard eqn i.e v = V_c*sin((w_c * t) + m_f*sin(w_m*t)) we get
w_c = 5*10^8//angular carrier frequency
w_m = 1250//angular modulating frequency
m_f = 4//modulating index
V_c = 10//carrier voltage in volts
R = 5//resistance in ohms

//calculations
f_c = w_c/(2*%pi)//carrier frequency
f_m = w_m/(2*%pi)//modulating frequency
deltaf = m_f * f_m//maximum deviation
V_rms = (V_c/sqrt(2))^2//RMS value of FM wave
P = V_rms/R//power dissipated

//results
printf("\n\ni.a.Carrier frequency = %.2f Hz",f_c);
printf("\n\n  b.Modulating frequency = %.2f Hz",f_m);
printf("\n\nii.a.Modulation index = %.2f",m_f);
printf("\n\n   b.Maximum deviation = %.2f Hz",deltaf);
printf("\n\niii.Power dissipated in 5 ohms resistance = %.2f W",P);
