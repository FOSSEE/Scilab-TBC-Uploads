//ques6
//air standard refrigeration cycle
clear
clc
//1-compressor inlet
//2-compressor exit
P1=100;//kPa
P2=500;//kPa
k=1.4;
rp=P2/P1;
cop=(rp^(1-1/k)-1)^-1;
printf('Coefficient of performance = %.3f \n',cop);
//3-Expander inlet
//4-Expander exit
P3=P2;
P4=P1;
T3=288.23;//K, given and fixed
T4=T3/(P3/P4)^(1-1/k);
T1=253.2;//K, given
Cp=1.004;//Specific heat at cons pressure in kJ/kg
ql=Cp*(T1-T4);//heat released in kJ/kg
P=1//power required in kW 
ms=P/ql;//kg/s
printf(' Rate at which the air enter the compressor = %.3f kg/s ',ms); 