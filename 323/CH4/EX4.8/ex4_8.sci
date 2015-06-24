funcprot(0)
function [polar] = rect2polar(x,y) //Function to convert rectangular coordinates to polar coordinates
    polar=ones(1,2)
    polar(1)=sqrt((x^2)+(y^2))
    polar(2)=atan(y/x)
    polar(2)=(polar(2)*180)/%pi
endfunction
function [rect] = polar2rect(r,theta) //Function to convert polar coordinates to rectangular coordinates
    rect=ones(1,2)
    theta=(theta*%pi)/180
    rect(1)=r*cos(theta)
    rect(2)=r*sin(theta)
endfunction
clc
//Refer to the data given in the question
Vl=440 //Line voltage
P=50*(10^3) //Active power in watts
Il=90 //Load current in amperes
Vph=Vl //For delta connected load phase voltage=line voltage
Iph=Il/sqrt(3)
printf("\n Iph=%.2f A \n",Iph)
//Since P, Il and Vl have been given, the power factor can be calculated easily
pf=P/(sqrt(3)*Vl*Il)
printf("\n Power factor=%.2f (lagging) \n",pf)
S=sqrt(3)*Vl*Il
printf("\n S=%.2f kVA \n",S*(10^-3))
