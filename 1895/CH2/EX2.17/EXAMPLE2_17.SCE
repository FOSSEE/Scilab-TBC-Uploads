//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.17(PAGENO 109)");

//given from the figure
P_maxpp = 2*80//maximum peak to peak power in watts
P_minpp = 2*20//minimum peak to peak power in watts

//calcualtions
m_a = (P_maxpp - P_minpp)/(P_maxpp + P_minpp)//modultaion index
M = m_a*100//percentage modulation index

//results
printf("\n\ni.Modulation index =%.2f",m_a);
printf("\n\nii.Percentage modulation index = %.2f percent",M);
