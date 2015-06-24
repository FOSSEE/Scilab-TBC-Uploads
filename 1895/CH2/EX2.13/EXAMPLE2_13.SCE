//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.13(PAGENO 90)");

//given
m1 = 1//modulation index of first signal
m2 = .5//modulation index of second signal
//let
P_c = 1//carrier power in watts 

//calculations
P_1= P_c*(1+(m1^2/2))//total power of first signal
P_2 = P_c*(1+(m2^2/2))//total power of second signal
P_a = (P_c*100)/(P_1)//percentage power saving for first signal
P_b = (P_c*100)/(P_2)//percentage power saving for second signal

//results
printf("\n\ni.Percentage power saving for first signal= %f percent",P_a);
printf("\n\nii.Percentage power saving for second signal= %f percent",P_b);
