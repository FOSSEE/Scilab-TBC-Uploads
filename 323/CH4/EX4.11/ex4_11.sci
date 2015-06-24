funcprot(0)
function [polar] = rect2polar(x,y) //Function to convert rectangular coordinates to polar coordinates
    polar=ones(1,2)
    polar(1)=sqrt((x^2)+(y^2))
    polar(2)=atan(y/x)
    polar(2)=(polar(2)*180)/%pi
endfunction
clc
//Refer to the data given in the question
Vl=208 //Line voltage
P=1800 //Active power
Il=10 //Line current
Vph=Vl/sqrt(3)
printf("\n Vph=%.2f V \n",Vph)
Iph=Il 
Zph=Vph/Iph
printf("\n Zph=%.2f ohms \n",Zph)
//Since the active power,line voltage and line current are given, the power factor can be calculated easily
pf=P/(sqrt(3)*Vl*Il)
printf("\n Power factor=%.2f \n",pf)
phi=acos(pf)
phi=phi*180/%pi
printf("\n phi=%.0f degrees \n",phi)
Rph=Zph*pf
printf("\n Rph=%.2f ohms \n",Rph)
Xph=Zph*sqrt(1-pf^2)
printf("\n Xph=%.2f ohms \n",Xph)