//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.18(PAGENO 222)");

//given
f_m1 = 400//modulating frequency for first case
V_m1 = 2.4//modulating voltage for first case
f_m2 = 250//modulating frequency for second case
V_m2 = 3.2//modulating voltage for second case
m_f1 = 60//modulation index for first case

//calculations
delta_f1 = m_f1*f_m1//maximum frequency deviation for first case
k = delta_f1/V_m1//constant
delta_f2 = k*V_m2//frequency deviation for second case
m_f2 = delta_f2/f_m2//modulation index for second case

//results
printf("\n\ni.Maximum frequency deviation for first case = %.2f Hz",delta_f1);
printf("\n\nii.Modulation index for second case = %.2f ",m_f2);
