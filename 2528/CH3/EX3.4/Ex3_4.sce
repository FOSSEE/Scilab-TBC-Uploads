//Chapter 3
//Output current of circuit
//page 88
//Example no 3-4
clc;
clear;
R1=9000;        // in Ohm
R2=1000;        //in Ohm
B=R2/(R1+R2);
printf("\n B is %.2f\n",B);//Result
//Aps=1/B;
Aps=(R1+R2)/R2;
printf("\n Aps = %.0f \n ",Aps);//Result
