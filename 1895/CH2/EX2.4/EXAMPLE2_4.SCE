//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.4(PAGENO 54)");
//given
P_t = 10*10^3;//total power in watts
m_a = .6;//modulation index
//calculation
P_c = (P_t/(1+(m_a^2/2)));// carrier power
//results
printf("\n\nCarrier power=%.2f  W",P_c);
