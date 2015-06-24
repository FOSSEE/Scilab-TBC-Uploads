//Chapter 3
//page no 72
//given
clc;
clear all;
//calculate Tf
If=85;          //in mAmps
Vf=2.5;         //in Volts
Ta=25;           //in deg C
//calculate Tj
W=150;          //in C/W for hermetric led
Pd=If*Vf;
Tj=Ta+W*Pd/1000;
printf("\n Value of Tj is %0.1f deg C\n",Tj);
TF=8.01*10^12 *%e^-(8111/(Tj+273));
printf("\n Value of TF is %0.0f deg C\n",TF);
//calculate RF
BF=6.5*10^-4;               //from table
QF=0.5;                     //from table
EF=1;                       //from table
RF=BF*TF*EF*QF*1/10^6;
disp(RF,"Value of RF")
printf("\n Value of MTBF is %0.0f*10^6 hours \n",1/RF/10^6);//Answer in book is misprint in last line


