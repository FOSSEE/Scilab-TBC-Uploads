//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.21(PAGENO 233)");

//given data from block diagram
f_c = 10*10^6//carrier frequency 
delta_f = 10*10^3//frequency deviation
m_f = 5//modulation index

//calculations
//first stage
f_cA = 3 * f_c//carrier frequency at point A
delta_fA = 3 * delta_f//frequency deviation at point A
m_fA = 3 * m_f//modulation index at point A
f_maxA = f_cA + delta_fA//maximum frequency at point A
f_minA = f_cA - delta_fA//minimum frequency at point A
//second stage
f_cB = f_cA + f_c//carrier frequency at point B
f_maxB = f_maxA  +f_c//maximum frequency at point B
f_minB = f_minA + f_c//minimum frequency at point B
delta_fB = f_maxB - f_cB//frequency deviation at point B
//their will no change in modulation index 

//results
printf("\n\ni.a.Carrier frequency at point A = %.2f Hz",f_cA);
printf("\n\n b.Frequency deviation at point A = %.2f Hz",delta_fA);
printf("\n\n c.Modulation index at point A = %.2f ",m_fA);
printf("\n\n d.Maximum frequency at point A = %.2f Hz",f_maxA);
printf("\n\n e.Minimum frequency at point A = %.2f Hz",f_minA);
printf("\n\nii.a.Carrier frequency at point B = %.2f Hz",f_cB);
printf("\n\n b.Frequency deviation at point B = %.2f Hz",delta_fB);
printf("\n\n c.Modulation index at point B = %.2f ",m_fA);
printf("\n\n d.Maximum frequency at point B = %.2f Hz",f_maxB);
printf("\n\n e.Minimum frequency at point B = %.2f Hz",f_minB);
