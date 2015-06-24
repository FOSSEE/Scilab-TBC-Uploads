//ques1
//Compression of High-Speed Air in an Aircraft
clear
clc
//(a) the stagnation pressure at the compressor inlet (diffuser exit) can be determined from Eq. 17–5 in book
//state 1
T1=255.7;//Temperature in K
V1=250;//velocity in m/s
Cp=1.005;//specifc heat at const pressure in kJ/kg/K
T01=T1+V1^2/(2*Cp)/1000;//divide 1000 to convert it into K
//now from eqn 17-5
P1=54.05;//pressure in kPa

k=1.4;
P01=P1*(T01/T1)^(k/(k-1));
printf('(a) Pressure P01 = %.2f kPa \n',P01);

//(b) To determine the compressor work
r=8//P02/P01
T02=T01*r^(1-1/k);//Temperature in K
//Disregarding potential energy changes and heat transfer, the compressor work per unit mass of air is determined from Eq. 17–8
Win=Cp*(T02-T01);//Work input in kJ/kg
printf(' (b) Work input = %.1f kJ/kg \n',Win);
