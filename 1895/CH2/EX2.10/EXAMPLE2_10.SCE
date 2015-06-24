//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.10(PAGENO 57)");

//given
m1 = .4//modulation index
I_t1 = 11//initial antenna current in ampers
I_t2 = 12//final antenna current in ampers

//calculations
I_c = (I_t1/(1+(m1^2/2))^.5);// formula for carrier current in ampers
m_t = sqrt(2*((I_t2/I_c)^2 -1));//total modulation index
m2 = sqrt(m_t^2 - m1^2);//modulation index to the second wave
m3 = m2*100;//percentage modulation index to the second wave

//results
printf("\n\n Carrier current = %.2f A",I_c);
printf("\n\nTotal modulation index = %.2f",m_t);
printf("\n\nPercentage modulation index of second wave= %.2f percent",m3);
