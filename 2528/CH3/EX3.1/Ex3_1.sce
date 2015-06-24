//Chapter 3
//Closed loop gain 
//page 75
//Example no 3-1
//figure 3.4
clc;
clear;
Aol=200;
f2_ol=10000;     // in Hz
B=0.04;
Asp=Aol/(1+B*Aol);
printf("\n Asp %.2f \n ",Asp);            //Result
printf("\n Approximately Asp =1/B equal to %.0f \n",1/B);//result
S=Aol/Asp;
printf("\n S =%.0f \n",S);
f2_sp=f2_ol*S;
printf("\nf2_sp %.0f Hz",f2_sp);       //Result
