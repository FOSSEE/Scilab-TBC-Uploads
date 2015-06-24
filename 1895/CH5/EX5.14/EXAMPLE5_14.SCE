
//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.14(PAGENO 220)");

//given
deltaf = 6*10^3//frequency deviation from the question of EXAMPLE 5.13(PAGENO 220)
f_m = 1*10^3//modulating frequency from the question of EXAMPLE 5.13(PAGENO 220)
deltaf1 = 12*10^3//frequency deviation from the  EXAMPLE 5.13(PAGENO 220) of first case
deltaf2 = 24*10^3//frequency deviation from the  EXAMPLE 5.13(PAGENO 220) of second case
f_m1 = f_m//modulating frequency from the EXAMPLE 5.13(PAGENO 220) of first case
f_m2 = 500//modulating frequency from the EXAMPLE 5.13(PAGENO 220) ofsecond case

//calculation
m_f = deltaf/f_m//modulation index for the initial conditions given in the problem 5.13
m_f1 = deltaf1/f_m1//modulation index for the first case
m_f2 = deltaf2/f_m2//modulation index for the second case

//results
printf("\n\na.Modulation index for initial conditions given in the problem 5.13 = %.2f ",m_f);
printf("\n\nb.Modulation index for the first case = %.2f",m_f1);
printf("\n\nc.Modulation index for the second case = %.2f",m_f2);
