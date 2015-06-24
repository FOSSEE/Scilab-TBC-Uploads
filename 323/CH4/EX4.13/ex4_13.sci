//Chapter 4,Ex4.1,Pg 4.8
funcprot(0)
function [polar] = rect2polar(x,y) //Function to convert rectangular coordinates to polar coordinates
    polar=ones(1,2)
    polar(1)=sqrt((x^2)+(y^2))
    polar(2)=atan(y/x)
    polar(2)=(polar(2)*180)/%pi
endfunction
clc;
//Refer to the data given in the question
Vl=400 //Supply voltage
Il=34.65 //Current in Amperes
P=14.4*10^3 //Active power in volts
Vph=Vl
Iph=Il/sqrt(3)
printf("\n Iph=%.0f A \n",Iph)
Zph=Vph/Iph
printf("\n Zph=%.0f ohms \n",Zph)
//We can calculate the power factor easily from the given data
pf=P/(sqrt(3)*400*34.65)
printf("\n Power factor=%.1f \n",pf)
phi=acos(pf)
phi=phi*180/%pi
printf("\n phi=%.2f degrees \n",phi)
Rph=Zph*pf
printf("\n Rph=%.0f ohms \n",Rph)
Xph=Zph*sqrt(1-pf^2)
printf("\n Xph=%.0f ohms \n",Xph)
