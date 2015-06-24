//calculation of heat of neutralization

clear;
clc;

printf("\t Example 6.8\n");

//for water
m=100+100;//mass, g
s=4.184;//specific heat, J/g C
deltaT=25.86-22.5;//change in temp., C
qsoln=m*s*deltaT/1000;//heat gained by water, kJ

qrxn=-qsoln;
Hneut=qrxn/(0.5*0.1);

printf("\t the heat of neutralization is : %4.1f kJ/mol\n",Hneut);

//End
