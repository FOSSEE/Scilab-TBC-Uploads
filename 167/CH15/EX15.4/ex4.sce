///example 4
//Reverse Combustion Analysis
clear
clc
a=22.20 //No. of kmol of dry air
x=1.36 //No. of kmol of octane 
b=12.24 //No. of kmol of H2O
mair=16.32*4.76*29 //mass of air in kg
mfuel=8*12+9*2 //mass of fuel in kg
AF=mair/mfuel //air  fuel ratio kg air/kg fuel
mairact=4.76*16.32 //actual amount of air in kmol
mairth=12.50*4.76 //Theoretical amount of air mol
p=mairact/mairth //percentage of theoretical air
Pv=3.198 //Partial pressure of water vapour in kPa
Pprod=100 //Pressure of products in kPa
Nw=(900-82.53*Pv)/(Pprod-Pv) //no. of kmol of water vapour
printf("\n Hence, the Air fuel ratio is = %.2f kg air/kg fuel. \n",AF);
printf("\n The precentage of theoretical air used is = %.0f . \n",p*100);
printf("\n The amount of H2O that is condensed as products are cooled is=%.2f kmol. \n",Nw);