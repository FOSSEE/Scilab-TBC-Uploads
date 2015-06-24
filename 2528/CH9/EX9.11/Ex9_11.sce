// Chapter 9
// determine Output frequency
// Page.No-340
// Example9_11
// Given
clear;clc;
f=2000;         ///in Hz
DC=0.8;
T=1/f;
Thigh=DC*T;
printf("\n T high is  = %.6f Sec\n",Thigh); // Result
Tlow=T-Thigh;
printf("\n T low is  = %.6f Sec\n",Tlow); // Result
//assumption
Rb=10000;            //in Ohm
//Tlow=0.69RC
C1=Tlow/(0.69*Rb);
printf("\n Value of Capacitance C is  = %.10f F\n",C1); // Result
//Thigh=0.69(Ra+Rb)
Ra=Thigh/(0.69*C1)-Rb;
printf("\n Value of resistance Ra is  = %.0f Ohm\n",Ra); // Result
