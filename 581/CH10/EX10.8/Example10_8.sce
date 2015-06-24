
clear;
clc;

printf("\t Example 10.8\n");
T1=80;        //temp.of liquid nitrgen,K   
T2=230;        //temp of chamber walls,K
D1=0.00635;      //outer diameter of steel, m
D2=0.0127;        //diameter of 2nd steel tube, m
e1=0.2 ;           //emissivity 0f steel
x=poly([0],'x');

//the nitrogen coolant will hold the surface of the line at essentially 80 K, since the thermal ressistance of tube wall and int. convection or boiling process are small.

Qgain=%pi*D1*e1*5.67*10^-8*(T2^4-T1^4);   // net heat gain of line per unit length,W/m
 //with the shield , assuming that the chamber area is large compared to the shielded line.
 
 Qgain1=%pi*D1*5.67*10^-8*(T2^4-T1^4)/(((1-e1)/e1+1)+D1/D2*(2*(1-e1)/e1+1));       //net heat gain with shield,W/m
 
 s=(Qgain-Qgain1)/Qgain*100;    //rate of heat gain reducton in percentage
 
 x=roots(%pi*D2*e1*5.67*10^-8*(T2^4-x^4)-Qgain1);
 
 
 printf("\t net heat gain of line per unit length is :%.3f W/m\n",Qgain);
 printf("\t rate of heat gain reducton is :%.0f percent \n",s);
 printf("\t temp. of the shield is : %.0f C\n",x(4));
 
 //end
 