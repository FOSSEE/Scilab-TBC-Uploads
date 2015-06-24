//Caption:  entropy ,information rate
//Example 9.50
//Pge no 441
//Find entropy ,information rate
//If there are 16 outcomes per second
clear;
clc;

P1=1/2;
P2=1/4;
P3=1/8
P4=1/16;
P5=1/32;
P6=1/32;
 r=16;//message rate
H=P1*log2(1/P1)+P2*log2(1/P2)+P3*log2(1/P3)+P4*log2(1/P4)+P5*log2(1/P5)+P6*log2(1/P6);  //Entropy of system
printf("\n \t i)Entropy of system \n\n \t  H=%.4f bits/message\n",H);
R=H*r; //R=Entropy*message rate
printf("\n \t ii)Information rate\n \n\t R = %d bits/sec",R);

