//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.5(PAGENO 55)");

//given
I_t = 8.93;//total modulated current in ampers
I_c= 8;//carrier or unmodulated current in ampers
//calculation
m_a = sqrt(2*((I_t/I_c)^2 -1));//formula for modulation index
M_a=m_a*100;//percentage modulation
//for 
m_a1 = .8;//given modulation index

//calculation
I_t1 = I_c*sqrt(1+(m_a1^2/2));//new antenna current 

//results
printf("\n\ni.a. Modulation index = %.2f",m_a);
printf("\n\n  b.Percentage modulation index = %.2f percent",M_a);
printf("\n\nii. Antenna current=%.2f A",I_t1);
