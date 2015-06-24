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
Vl=230 //Line voltage in volts
f=50 //freq in hertz
Vph=Vl
Zbarph=rect2polar(8,-6)
r=Zbarph(1)
printf("\n r=%.0f \n",r)
phi=Zbarph(2)
printf("\n phi=%.2f degrees \n",Zbarph(2))
pf=cos(phi*%pi/180)
printf("\n Power factor=%.1f (leading) \n",pf)
Iph=Vph/Zbarph(1)
printf("\n Iph=%.0f A \n",Iph)
Il=sqrt(3)*Iph
printf("\n Il=%.2f A \n",Il)
Q=sqrt(3)*Vl*Il*sin(phi*%pi/180)
Q=Q*(10^-3)
printf("\n Reactive power Q=%.2f kVAR \n",Q)
