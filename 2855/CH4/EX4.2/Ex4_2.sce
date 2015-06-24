//Chapter 4
//page no 106
//given
clc;
//calculate Tf
Pd=1.15;            //in mW
//calculate Tj
TA=25;              //in deg C
theta_JA=200;          //in C/W for hermetric led
TJ=TA+theta_JA*Pd/10^3;
TF=8.01*10^12 *%e^-(8111/(TJ+273));
printf("\n Value of TJ is %0.2f deg C\n",TJ);
printf("\n Value of TF is %0.2f deg C\n",TF);
//calculate RF
BF=1.1*10^-3;               //from table
QF=0.5;                     //from table
EF=1;                       //from table
RF=BF*TF*EF*QF*1/10^6;
disp(RF,"Value of RF");
printf("\n Value of MTBF is %0.0f*10^6 hours \n",1/RF/10^6);
