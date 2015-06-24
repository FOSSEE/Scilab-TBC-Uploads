//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.36(PAGENO 259)");

//given
//first case
f_m1 = 500//modulating frequency
delta_f1 = 6.4*10^3//frequency deviation
V_m1 = 3.2//modulating amplitude
//second case
V_m2 = 8.4//modulating amplitude
 //third case
V_m3 = 20//modulating amplitude
f_m3 = 200//modulating frequency

//calculations
k_f = delta_f1/V_m1//frequency sensitivity
delta_f2 = k_f*V_m2//frequency deviation for second case
delta_f3 = k_f*V_m3//frequency deviation for third  case
m_1 = delta_f1/f_m1//modulation index for first case
m_2 = delta_f2/f_m1//modulation index for second case
m_3 = delta_f3/f_m3//modulation index for third case

//results
printf("\n\ni.a.Frequency deviation for first case = %.2f Hz",delta_f1);
printf("\n\n  b.Modulation index for first case = %.2f ",m_1);
printf("\n\nii.a.Frequency deviation for second case = %.2f Hz",delta_f2);
printf("\n\n   b.Modulation index for second case = %.2f ",m_2);
printf("\n\niii.a.Frequency deviation for third case = %.2f Hz",delta_f3);
printf("\n\n    b.Modulation index for third case = %.2f ",m_3);
