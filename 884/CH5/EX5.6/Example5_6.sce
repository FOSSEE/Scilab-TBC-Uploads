//Ideal Gas Equation

clear;
clc;

printf("\t Example 5.6\n");

P1=1.2;// pressure initial, atm
T1=18+273;//temperature initial, K
T2=85+273;//temperature final, K
//volume is constant

P2=P1*T2/T1;// pressure final,atm

printf("\t the final pressure is : %4.2f atm\n",P2);

//End
