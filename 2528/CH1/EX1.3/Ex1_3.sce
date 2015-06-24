// Chapter 1
//Ordinary power gain
//page 15
//Example no 1-3
//Given
clc;
G1=23;      //in dB      
G=10^(G1/10);
printf("\n The ordinary power gain is %.4f  \n",G);   // Result
Pin=10^-3;      //in mW
Pout=Pin*G;
printf("\n The output power is %.4f mW \n",Pout);   // Result
