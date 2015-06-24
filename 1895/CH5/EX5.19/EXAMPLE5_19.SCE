//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.19(PAGENO 222)");

//given
f_m1 = 1*10^3//modulating frequency for first case
f_m2 = 500//modulating frequency for second case
V_m1 = 2//modulating voltage for first case
V_m2 = 8//modulating volatge for second case
delta_f1 = 4*10^3//frequency deviation for first case

//calculations 
 k = delta_f1/V_m1//constant
 delta_f2 = k*V_m2//frequency deviation for second case
 m_f1 = delta_f1/f_m1//modulation index for first case
 m_f2 = delta_f2/f_m2//modulation index for second case
 BW1 = 2*(delta_f1 + f_m1)//bandwidth for first case
 BW2 = 2*(delta_f2 + f_m2)//bandwidth for second case
 
 //results
printf("\n\ni.a.Modulation index for first case = %.2f",m_f1);
printf("\n\n  b.Bandwidth for first case = %.2f Hz",BW1);
printf("\n\nii.a.Modulation index for second case = %.2f",m_f2);
printf("\n\n b .Bandwidth for second case = %.2f Hz",BW2);
printf("\n\nNote: Their is error in textbook in the calculation of second case bandwidth ");
