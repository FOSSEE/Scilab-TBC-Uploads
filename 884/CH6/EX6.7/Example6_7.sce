//calculation of specific heat

clear;
clc;

printf("\t Example 6.7\n");

//for water
m=100;//mass, g
s=4.184;//specific heat, J/g C
deltaT=23.17-22.5;//change in temp., C
qH2O=m*s*deltaT;//heat gained by water, J

//for lead
qPb=-qH2O;//heat lost by lead, J
m=26.47;//mass, g
deltaT=23.17-89.98;//change in temp., C
s=qPb/(m*deltaT);//specific heat, J/g C

printf("\t the specific heat of lead is : %4.3f J/g C\n",s);

//End
