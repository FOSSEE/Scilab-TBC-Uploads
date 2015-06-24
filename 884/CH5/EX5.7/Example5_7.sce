//Ideal Gas Equation

clear;
clc;

printf("\t Example 5.7\n");

P1=6.4;// pressure initial, atm
P2=1.0;// pressure final, atm
T1=8+273;//temperature initial, K
T2=25+273;//temperature final, K
V1=2.1;//volume initial, mL

V2=P1*V1*T2/(T1*P2);// volume final, mL

printf("\t the final volume is : %4.0f mL\n",V2);

//End
