//Chapter 12
//page no 533
//given
clc;
clear ;
Q1=4;           //quality factor
Q2=6;           //quality factor
BER1=[2*%pi*(Q1^2+2)]^-0.5*exp(-Q1*Q1/2); 
BER2=[2*%pi*(Q2^2+2)]^-0.5*exp(-Q2*Q2/2);
printf("\n For Q=4 ,BER  = %0.0f*10^-5 ",BER1*10^5);      //Result
printf("\n For Q=6 ,BER  = %0.1f*10^-10 ",BER2*10^10);      //Result
//Answer second is misprinted in the book



