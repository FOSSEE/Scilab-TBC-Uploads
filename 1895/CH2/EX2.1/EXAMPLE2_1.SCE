//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.1(PAGENO 51)");
//given
L = 50*10^-6//in henry
C = 1*10^-9//in farads
//calculation
F_c = 1/(2*%pi*sqrt(L*C));
//results
printf("\n\nCarrier frequency F_c = %.2f Hz",F_c);
printf("\n\nNow , it is given that the highest modulation frequency is 8KHz ");
printf("\n\nTherefore, the frequency range occupied by the sidebands will range from 8KHz \nabove to 8KHz below the carrier frequency, extending fom 712KHz to 720KHz.");
