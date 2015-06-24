// Chapter8
// Design  a step down regulator
// Page.No-288
// Example8_6
//Figure 8.27
// Given
clear;clc;
Vout=12;            //in V
R2=10000;          //in Ohm        (Assumption)
R1=R2*(Vout-1);
printf("\n Value of R1 is = %.f Ohm\n",R1); // Result
Isw=0.75;               //in Amp
R3=0.11/Isw;
printf("\n Value of R3 is = %.2f Ohm\n",R3); // Result
Iout=0.200;         //in Amp
Df=0.2;
delI =2*Iout*Df;
printf("\n Value of del I is = %.3f Amp\n",delI); // Result
F=50000;           //in Hz
Vin=20;         //in V
L1=Vout*(Vin-Vout)/(delI*Vin*F);
printf("\n Value of L1 is = %.4f H\n",L1); // Result
Vripple=0.040;      //in V
C2=Vout*(Vin-Vout)/(8*F^2*Vin*Vripple*L1);
printf("\n Value of C2 is = %.6f F\n",C2); // Result
//C2 is ste a standard of 33microF or 47microF
