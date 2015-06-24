//Example 6.7
//Program to compare the ratio of threshold current densities at 20 C 
//and 80 C for AlGaAs and InGaAsP
  
clear;
clc ;
close ;

//Given data 
T1=293;               //degree C
T2=352;               //degree C

//For AlGaAs
T0=170;               //degree C
Jth_20=exp(T1/T0);
Jth_80=exp(T2/T0);
Ratio=Jth_80/Jth_20;

//Displaying the Result in Command Window
printf("\n\n\t Ratio of current densities for AlGaAs is %0.2f .",Ratio);

//For InGaAsP
T0=55;               //degree C
Jth_20=exp(T1/T0);
Jth_80=exp(T2/T0);
Ratio=Jth_80/Jth_20;

//Displaying the Result in Command Window
printf("\n\n\t Ratio of current densities for InGaAsP is %0.2f .",Ratio);