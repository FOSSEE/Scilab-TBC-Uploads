// Chapter8
// 12V Voltage Regulator 
// Page.No-279
// Example8_4
//Figure 8.17
// Given
clear;clc;
Vref=7.15;            //in V
Vout=12;            //in V
Ilimit=0.050;           //in Amp
R2=10000;           //in Ohm
R1=Vout*R2/Vref-R2;
printf("\n Value of R1 is = %.f Ohm\n",R1); // Result
Vsense=0.65;            //in V
Rsc=Vsense/Ilimit;
printf("\n Value of current sense resistor is = %.f Ohm\n",Rsc); // Result
R3=R1*R2/(R1+R2);
printf("\n Value of minimum drift resistor is = %.f Ohm\n",R3); // Result
