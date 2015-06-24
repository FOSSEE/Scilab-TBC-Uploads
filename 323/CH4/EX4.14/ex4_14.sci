funcprot(0)
function [polar] = rect2polar(x,y) //Function to convert rectangular coordinates to polar coordinates
    polar=ones(1,2)
    polar(1)=sqrt((x^2)+(y^2))
    polar(2)=atan(y/x)
    polar(2)=(polar(2)*180)/%pi
endfunction
clc
//Refer to the data given in the question
P=10.44*10^3 //Power in kWh
Vl=200 //Line voltage
pf=0.5 //Leading power factor
Vph=Vl //For delta connected load
//Since we have the value of active power,line voltage and power factor we can easily calculate the value of line current
Il=P/(sqrt(3)*Vl*pf)
printf("\n Il=%.2f A \n",Il)
Iph=Il/sqrt(3)
printf("\n Iph=%.1f A \n",Iph)
Zph=Vph/Iph
printf("\n Zph=%.2f ohms \n",Zph)
Rph=Zph*pf
printf("\n Rph=%.3f ohms \n",Rph)
Xph=Zph*(sqrt(1-pf^2))
printf("\n Xph=%.2f ohms \n",Xph)
Q=sqrt(3)*Vl*Il*sqrt(1-pf^2)
printf("\n Q=%.2f kVAR \n",Q*10^-3)
