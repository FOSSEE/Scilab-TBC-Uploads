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
R=8 //Resistance in ohms
L=0.02 //Inductance in henry
Vl=400 //Line voltage 
f=50 //Freq in hertz
Xl=2*%pi*f*L
Zbarph=rect2polar(R,Xl)
r=Zbarph(1)
phi=Zbarph(2)
printf("\n Zph=%.2f ohms \n",r)
printf("\n phi=%.2f degrees \n",phi)
phi=phi*%pi/180 //Converting degrees to radians
Iph=Vl/r
printf("\n Iph=%.2f A \n",Iph)
Il=sqrt(3)*Iph
printf("\n Il=%.2f A \n",Il)
P=sqrt(3)*Vl*Il*cos(phi) //Active power
printf("\n P=%.2f kW \n",P*(10^-3))
