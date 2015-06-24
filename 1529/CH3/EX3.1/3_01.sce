//Chapter 3, Problem 1
clc;
R=600;                  //Resistance of wire
L=5;                    //Length of wire in metre
L1=8;                   //Length of the same wire in metre
R2=420;                 //Resistance of the same wire 
K=R/L;                  //Calculating proportionality constant
R1=K*L1;                //Calculating resistance of an 8m length of same wire
L2=R2/K;             //Calculating length of same wire when resistance is 420ohm
printf("The resistance of an 8m length wire= %f ohm\n\n\n",R1);
printf("Length of the same wire when the resistance is 420 ohm = %fm",L2);
