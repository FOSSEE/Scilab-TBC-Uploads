//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.30(PAGENO 257)");

//given
m_f1 = 1//modualtion index for first case
m_f2 = 10//modualtion index for second  case
//let
f_m = 1*10^3//modulating frequency

//calulations
//the bandwidth for FM signal can be calculated on the basis of 98% power requirement given by Carson's rule
BW1 = 2*(m_f1+1)*f_m//bandwidth for first case
B1 = (2*m_f1 +1)*f_m//frequency band first case
BW2 = 2*(m_f2+1)*f_m//bandwidth for second  case
B2 = (2*m_f2 +1)*f_m//frequency band second  case
P1 = (B1/BW1)*(98)//fraction of signal power that is included in freuency band for 1st case
P2 = (B2/BW2)*(98)//fraction of signal power that is included in freuency band for 2nd case

//results
printf("\n\ni.Fraction of signal power that is included in freuency band for 1st case =%.2f percent",P1);
printf("\n\nii.Fraction of signal power that is included in freuency band for 2nd case =%.2f percent",P2);
printf("\n\nNote: Their is mistake in calculation of fraction of power of second case in text book")
