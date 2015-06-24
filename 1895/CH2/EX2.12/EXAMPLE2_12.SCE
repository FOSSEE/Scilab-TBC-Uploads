//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.12(PAGENO 60)");

//given
P_t = 10.125*10^3//modulated or total power in watts
P_c = 9*10^3//unmodulated of carrier power
m_2 = .4//modulation index of second wave

//calculations
m_1 = sqrt(2*((P_t/P_c) - 1))//modulation index of first wave
m_a = m_1*100//percentage modulation index of first wave
m_t = sqrt(m_1^2 + m_2^2)//total modulation index
P_t1 = P_c*(1+(m_t^2/2))//total radiated power

//results
printf("\n\ni.a.Modulation index of first wave = %.4f",m_1);
printf("\n\n  b.Percentage modulation index of first wave = %.2f percent",m_a);
printf("\n\nii.Total radiated power = %.2f W",P_t1);
