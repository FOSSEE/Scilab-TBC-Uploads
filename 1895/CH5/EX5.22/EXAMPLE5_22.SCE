//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.22(PAGENO 251)");
//given
//first case
//The maximum deviation in commerical FM is given as
delta_f1 = 75*10^3//frequency deviation in commerical FM
f_m1 = 30//maximum modulating frequency
f_m2 = 15*10^3//minimum modulating frequency
//second case
 delta_f2 = 10*10^3//frequency deviation for narrowband FM
 f_m3 = 100//maximum modulating frequency
 f_m4 = 3*10^3//minimum modulating frequency 
 
 //calculations
 //first case
m_f1 = delta_f1/f_m1//modulation index for maximum modulating frequency
m_f2 = delta_f1/f_m2//modulation index for minimum modulating frequency 
//second case
m_f3 = delta_f2/f_m3//modulation index for maximum modulating frequency 
m_f4 = delta_f2/f_m4//modulation index for minimum modulating frequency  

//results
printf("\n\n i.a.modulation index for maximum modulating frequency of commercial FM = %.2f",m_f1)
printf("\n\n  b.modulation index for minimum modulating frequency of commercial FM = %.2f",m_f2)
printf("\n\nii.a.modulation index for maximum modulating frequency of narrowband FM = %.2f",m_f3)
printf("\n\n   b.modulation index for minimum modulating frequency of commercial FM = %.2f",m_f4)
