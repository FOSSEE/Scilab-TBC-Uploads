//Chapter 3
//Example 3-7
//ProbOnO/Pvoltage 
//Page 51
clear;clc;
Ri=10*10^3;//input resistance in ohm
Gain= 25;
Rf=Gain*Ri;//feedback resistance in ohm
printf("\n\n Value of Rf =  %.4f ohm \n\n",Rf)
xcos('Figure3_7.xcos');