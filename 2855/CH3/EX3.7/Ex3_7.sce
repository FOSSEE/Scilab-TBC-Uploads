//Chapter 3
//page no 74
//given
clc;
clear all;
//calculate Tf
If=120;          //in mAmps
Vf=1.8;         //in Volts
Ta=80;           //in deg C
//calculate Tj
W=150;          //in C/W for hermetric led
Pd=0.5*If*Vf;
Tj=75+W*Pd/1000;
printf("\n Value of Tj is %0.1f degree cel \n",Tj);
TF=8.01*10^12 *%e^-(8111/(Tj+273));
printf("\n Value of TF is %0.0f \n",TF);
//calculate RF
BF=6.5*10^-4;               //from table
QF=0.2;                     //from table
EF=0.75;                       //from table
RF=BF*TF*EF*QF*1/10^6;
printf("\n Value of RF is %0.3f*10^6 \n",RF*10^6);
printf("\n Value of MTBF is %0.0f*10^6 hours \n",1/RF/10^6);
