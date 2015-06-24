//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.10(PAGENO 212)");

//given
BW = 50*10^3//bandwidth
deltaf = 10*10^3//frequency deviation

//calculation
x = BW/deltaf//variable
m_f = 2//by referring to the Schwartz bandwidth curve with 'x'
f_m = deltaf/m_f//modulating frequency

//results
printf("\n\n  Modulating frequency = %.2f Hz",f_m);
