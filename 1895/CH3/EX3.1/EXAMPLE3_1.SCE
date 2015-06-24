//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 3
//RADIO TRANSMITTER
clear all;
clc;
printf("EXAMPLE 3.1(PAGENO 132)");

//given
Pm = 85//percentage modulation
m = .85//modulation index
P_c = 50*10^3//carrier power in watts

//calculation
P_t = P_c*(1+(m^2/2));//total radiated power 
 
//result
printf("\n\nTotal radiated power = %.2f W",P_t);
