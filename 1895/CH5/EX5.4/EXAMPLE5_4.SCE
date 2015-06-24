//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.4(PAGENO 200)");

//given
cs = 100*10^3//carrier swing
f_m = 8*10^3//modulating frequency

//calculations
deltaf = cs/2//frequency deviation
m_f = deltaf/f_m//modulation index
//results 
printf("\n\n    Modulation index = %.2f",m_f);
