//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.31(PAGENO 119)");

//given
//percentage modulation for first case
Pm_1 = 100
//percentage modulation for second case
Pm_2 = 50
m_1 = 1//modulation index for first case
m_2 = .5//modulation index for second case
P_c = 1//let carrier power be one

//calcualations

//first case
P_t1 = P_c*(1+(m_1^2/2))//total power
P_sb1 = P_c*(m_1^2/4)//power in one side band
P_s1 = ((P_t1-P_sb1)/P_t1)*100//power saving

//second case
P_t2 = P_c*(1+(m_2^2/2))//total power
P_sb2 = P_c*(m_2^2/4)//power in one side band
P_s2 = ((P_t2-P_sb2)/P_t2)*100//power saving

//results
printf("\n\ni. Power saving with percentage modulaion 100 = %.2f percent ",P_s1);
printf("\n\nii. Power saving with percentage modulaion 50 = %.2f percent",P_s2);
