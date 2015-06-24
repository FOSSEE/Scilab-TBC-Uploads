//Calculate voltage gain and input and output resistance
clear;
clc;
//soltion
//given

R1=20*10^3;//ohm
Rf=2000*10^3;//ohm
Acl=-Rf/R1;
Ricl=R1;
Ro=0;
printf("The voltage gain= %.0f\n",Acl);
printf("The input resistance =%.0f kΩ\n",R1/1000);
printf("The output resistance =%.0f Ω\n",Ro);
