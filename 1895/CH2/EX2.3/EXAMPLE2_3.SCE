//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.3(PAGENO 54)");

//given
m_a = .75;//modulation index
P_c = 400;//carrier power in watts

//calculation
P_t = P_c*(1+(m_a^2/2));//total power 

//results
printf("\n\nTotal power in  the amplitude modulated wave=%.2f W",P_t);
