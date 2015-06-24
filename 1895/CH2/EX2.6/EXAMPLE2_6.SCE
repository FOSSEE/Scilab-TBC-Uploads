//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.6(PAGENO 56)");

//given
I_t1 = 10//antenna current in amps
m1 = .3//modulation index
I_t2 = 11//increased antenna current

//calculation
I_c = (I_t1/(1+(m1^2/2))^.5);//formula for carrier signal current
m_t = sqrt(2*((I_t2/I_c)^2 -1));//formula for modulation index
m2 = sqrt(m_t^2 - m1^2);
m3 = m2*100;//percentage modulation index

//results
printf("\n\ni.Carrier signal current = %.2f A",I_c);
printf("\n\nii.Modulation index of signal = %.2f",m_t);
printf("\n\niii.a.Modulation index of second signal = %.2f",m2);
printf("\n\n    b.Percentage modulation index of second signal = %.2f percent",m3);
