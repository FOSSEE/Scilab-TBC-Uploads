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
Il=15 //Current in amperes
P=11*(10^3) //Active power in kilowatts
S=15*(10^3)
Vl=S/(sqrt(3)*Il)
printf("\n Vl=%.2f V \n",Vl)
Vph=Vl/sqrt(3)
printf("\n Vph=%.2f V \n",Vph)
pf=P/S //Power factor
printf("\n Power factor=%.3f \n",pf)
phi=acos(pf)
phi=phi*180/%pi
printf("\n phi=%.2f degrees \n",phi)
Q=sqrt(3)*Vl*Il*sin(phi*%pi/180)
printf("\n Q=%.1f kVAR \n",Q*10^-3)
//For star connected load,Il=Iph
Zph=Vph/Il
printf("\n Zph=%.2f ohms \n",Zph)
R=Zph*pf
printf("\n R=%.2f ohms \n",R)
Xl=Zph*sqrt(1-(pf^2))
printf("\n Xl=%.2f ohms \n",Xl)
Vph=Vl //If the coils are connected in delta
Iph=Vph/Zph
Il=sqrt(3)*Iph
printf("\n Il=%.0f A \n",Il)
P=sqrt(3)*Vl*Il*pf
printf("\n P=%.2f kW \n",P*(10^-3))
Q=sqrt(3)*Vl*Il*sqrt(1-(pf^2))
printf("\n Q=%.2f kVAR \n",Q*(10^-3))
