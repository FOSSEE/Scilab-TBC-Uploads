//molar heat of vaporisation and overall energy required

clear;
clc;

printf("\t Example 11.8\n");

m=346;//mass of H2O in g

//from 0 to 100 C
s=4.184;//specific heat of H2O, J/g C
deltaT=100-0;//change in Temp, C
q1=m*s*deltaT/1000;//heating H2O, kJ

//for evaporation at 100 C
deltaH=40.79;//heat of vaporisation in kJ
H2O=18.02;//mol mass of H2O, g
q2=m*deltaH/H2O;//heat of vaporising water, kJ

//for steam from 100 to 182 C
deltaT=182-100;//change in temp of steam, kJ
s=1.99;//specific heat of steam, J/g C
q3=m*s*deltaT/1000;//heating steam, kJ

q=q1+q2+q3;//overall energy required, kJ

printf("\t the overall energy required is : %4.0f kJ\n",q);

//End
