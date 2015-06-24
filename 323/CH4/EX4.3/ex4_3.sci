//Chapter4,Ex4.3,Pg4.9
funcprot(0)
function [polar] = rect2polar(x,y)
    polar=ones(1,2)
    polar(1)=sqrt((x^2)+(y^2))
    polar(2)=atan(y/x)
    polar(2)=(polar(2)*180)/%pi
endfunction
function [rect] = polar2rect(r,theta)
    rect=ones(1,2)
    theta=(theta*%pi)/180
    rect(1)=r*cos(theta)
    rect(2)=r*sin(theta)
endfunction
//Refer to the data given in the question
clc;
R=8 //Resistance in ohms
L=0.02 //Inductance in Henry
Vl=230 //Line voltage in volts
f=50
Vph=Vl/sqrt(3) //Phase voltage
printf("\n Vph=%.2f V \n",Vph)
Xl=2*%pi*f*L 
Zbarph=rect2polar(R,Xl) //Converting rectangular coordinates to polar coordinates
r=Zbarph(1)
phi=Zbarph(2)
printf("\n Zph=%.2f ohms \n",r)
printf("\n phi=%.2f degrees \n",phi)
phi=phi*%pi/180 //Converting degrees to radians
printf("\n Power factor =%.2f (lagging) \n",cos(phi))
Iph=Vph/r
printf("\n Iph=%.2f A \n",Iph)
Il=Iph
P=sqrt(3)*Vl*Il*cos(phi)
P=P*(10^-3)
printf("\n Active power =%.2f kW \n",P)
Q=sqrt(3)*Vl*Il*sin(phi)
Q=Q*(10^-3)
printf("\n Reactive power Q=%.2f kVAR \n",Q)
S=sqrt(3)*Vl*Il
S=S*(10^-3)
printf("\n Total power =%.3f kVA \n",S)


