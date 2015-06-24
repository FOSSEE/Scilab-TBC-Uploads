//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.11(PAGENO 217)");
//given
//x(t) = 5*cos(2*%pi*15*10^3*t)
V_m = 5//amplitude of voltage
f_m = 15*10^3//modulation frequency
k_f = 15*10^3//frequency sensitivity
k_p = 15*10^3//phase sensitivity

//calculations
//first case
//for FM system
delta_f1 = k_f * V_m;//frequency deviation for FM system
m_f1 = delta_f1/f_m; //modulation index in FM system
BW1 = 2*(delta_f1+f_m);//bandwidth for FM system
//for PM system
delta_f2 = k_f * V_m*f_m;//frequency deviation for PM system
BW2 = 2*(delta_f2 + f_m);//bandwidth for PM system
m_p1 = k_p * V_m//modulation index in PM system

//second case
f_m1 = 5*10^3//modulating frequency for second case
//for FM system
delta_f3 = k_p * V_m;//frequency deviation for FM system
m_f2 = delta_f3/f_m1; //modulation index in FM system
BW3 = 2*(delta_f3+f_m1);//bandwidth for FM system
//for PM system
delta_f4 = k_p * V_m*f_m1;//frequency deviation for PM system
BW4 = 2*(delta_f4 + f_m1);//bandwidth for PM system
m_p2 = k_p * V_m//modulation index in PM system

//results
printf("\n\ni.a.Modulation index of FM system for first case = %.2f",m_f1);
printf("\n\n  b.Bandwidth of FM system for first case = %.2f Hz",BW1);
printf("\n\nii.a.Modulation index of PM system for first case = %.2f",m_p1);
printf("\n\n  b.Bandwidth of PM system for first case = %.2f Hz",BW2);
printf("\n\niii.a.Modulation index of FM system for second case = %.2f",m_f2);
printf("\n\n  b.Bandwidth of FM system for second case = %.2f Hz",BW3);
printf("\n\niv.a.Modulation index of PM system for second case = %.2f",m_p2);
printf("\n\n  b.Bandwidth of PM system for second case = %.2f Hz",BW4);
