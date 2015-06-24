//Chapter 13
//page no 568
//given
clc;
clear all;
Vcc=5;                  //in V
Vf=1.5;             //in V
If=60;              //in mA
B=3.97;
N=3;
R9=(Vcc-Vf)*(B+1)/If/10^-3;
printf("\n R9 = %0.0f ohm\n",R9);
R7=R9/2/B-3/N;
printf("\n R7 = %0.1f ohm\n",R7);
R8=R9/2/B;
printf("\n R8 = %0.1f ohm\n",R8);
C4=2*10^-9/R8;
printf("\n C4 = %0.0f pF",C4*10^12);

