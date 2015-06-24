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
Vl=415
R=15
L=0.1
f=50
C=177*(10^-6)
Vph=Vl/sqrt(3)
Xl=2*%pi*f*L
Xc=1/(2*%pi*f*C)
Zbarph=rect2polar(R,(Xl-Xc))
r=Zbarph(1)
printf("\n Zph=%.2f ohms \n",Zbarph(1))
phi=Zbarph(2)
printf("\n phi=%.2f degrees \n",Zbarph(2))
phi=phi*%pi/180
pf=cos(phi)
printf("\n Power factor=%.3f (lagging) \n",pf)
Iph=Vph/r
printf("\n Iph=%.1f A \n",Iph)
P=sqrt(3)*Vl*Il*cos(phi)
printf("\n P=%.2f kW \n",P*(10^-3))
Q=sqrt(3)*Vl*Il*sin(phi)
printf("\n Q=%.2f kVAR \n",Q*(10^-3))
S=sqrt(3)*Vl*Il
printf("\n Total power =%.2f kVA \n",S*(10^-3))
//If the same impedance is connected in delta
Vph=Vl
Iph=Vph/r
printf("\n Iph=%.2f A \n",Iph)
Il=sqrt(3)*Iph
printf("\n Il=%.2f A \n",Il)
P=sqrt(3)*Vl*Il*cos(phi)
printf("\n P=%.2f kW \n",P*(10^-3)) 