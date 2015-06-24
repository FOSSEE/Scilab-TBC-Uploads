//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.11(PAGENO 58)");

//given
P_c = 10*10^3//carrier power in watts
P_t = 12*10^3//total power in watts
m_2 = .5//modulation index of second wave

//calculations
m_1 = sqrt(2*((P_t/P_c)-1));//modulation index of first wave
m_t = sqrt(m_1^2 +m_2^2);//total modulation index
P_t1 = P_c*(1+(m_t^2/2))//total new transmitted power

//results
printf("\n\nModulation index of first wave = %.4f",m_1);
printf("\n\nTotal modulation index = %.2f",m_t);
printf("\n\ntotal new transmitted power = %.2f W",P_t1);
