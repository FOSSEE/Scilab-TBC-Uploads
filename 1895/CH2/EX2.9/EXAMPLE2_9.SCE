//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.9(PAGENO 57)");

//given
V_max = 4//maximum voltage in volts
V_min = 1//minimum voltage in volts

//calculation
m = (V_max - V_min)/(V_max + V_min) ;//formula for modulation index
m1 = m*100//percentage modultion index

//result
printf("\n\n Percentage modulation index = %.2f percent",m1);
