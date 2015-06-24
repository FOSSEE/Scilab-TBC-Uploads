// Chapter8
// Design  a contineously adjusted supply b/w 2V to 5 V
// Page.No-279
// Example8_5
//Figure 8.15.1
// Given
clear;clc;
Vref=7.15;            //in V
Vout=5;            //in V
//(R1b+R2)/R2=Vref/Vout;
printf("\n For maximum case (R1b+R2)/R2 is = %.2f \n",Vref/Vout); // Result
R2=1;              // In Ohm (Assumption)
R1b=Vref/Vout-1;
printf("\n For R2=1 Ohm R1b:R2 is = %.2f:%.0f \n",R1b,R2); // Result
Voutm=2;           // in V
printf("\n For maximum case (R1a+R1b+R2)/R2 is = %.3f \n",Vref/Voutm); // Result
R1a=Vref/Voutm-1-0.43;
printf("\n For R2=1 Ohm R1b:R2 is = %.3f:%.0f \n",R1a,R2); // Result
R1a=10000;          //in Ohm        (Assumption)
R2=R1a/2.145;
printf("\n Value of R2 is = %.f Ohm\n",R2); // Result
//Similarly
R1b=R2*0.43;
printf("\n Value of R1b is = %.f Ohm\n",R1b); // Result
//Ilimit=Vsense/rsc;
Vsense=0.65;            //in V
Ilimit=1;           //in Amp
Rsc=Vsense/Ilimit;
printf("\n Value of current sense resistor is = %.f Ohm\n",Rsc); // Result
R1=6000;                //in Ohm
R3=R1*R2/(R1+R2);
printf("\n Value of minimum drift resistor is = %.f Ohm\n",R3); // Result
Ic=1;               //in Amp
Ib=0.150;           //in Amp
B=Ic/Ib;
printf("\n Value of B minimum  = %.2f \n",B); // Result

