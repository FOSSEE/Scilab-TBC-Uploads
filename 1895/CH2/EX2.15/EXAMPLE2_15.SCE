//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.15(PAGENO98 )");

//given
m1 = 1//modulation index of first signal
m2 = .5//modulation index of second signal
//let
P_c = 1//carrier power in watts 

//calculations
P_cssb1 = P_c*(1+(m1^2/4))//power in carrier plus power in one sideband for first signal
P_cssb2 = P_c*(1+(m2^2/4))//power in carrier plus power in one sideband for second signal
P_1= P_c*(1+(m1^2/2))//total power of first signal
P_2 = P_c*(1+(m2^2/2))//total power of second signal
P_a = (P_cssb1*100)/(P_1)//percentage power saving for first signal
P_b = (P_cssb2*100)/(P_2)//percentage power saving for second signal

//results
printf("\n\ni.Percentage power saving for first signal= %f percent",P_a);
printf("\n\nii.Percentage power saving for second signal= %f percent",P_b);
