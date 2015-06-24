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
L=50*(10^-3) //load inductance in mH
R=50 //Resistance in ohms
C=50*(10^-6) //Capacitance in microfarads
Vl=550 //Line voltage in volts
w=800 //Angular frequency
Vph=Vl //For delta connected load,phase voltage=line voltage
Xl=w*L
Xc=1/(w*C)
printf("\n Xl=%.0f ohms \n",Xl)
printf("\n Xc=%.0f ohms \n",Xc)
Zbarph=rect2polar(10,20)
r=Zbarph(1)
printf("\n Zph=%.2f \n",r)
printf("\n phi=%.2f \n",Zbarph(2))
Iph=Vph/r
printf("\n Iph=%.2f A \n",Iph)
pf=cos(Zbarph(2)*%pi/180)
printf("\n Power factor=%.3f (lagging) \n",pf)
Il=sqrt(3)*Iph
P=sqrt(3)*Vl*Il*pf
printf("\n P=%.2f kW \n",P*(10^-3))
Q=sqrt(3)*Vl*Il*sin(Zbarph(2)*%pi/180)
printf("\n Q=%.1f kVAR \n",Q*(10^-3))
S=sqrt(3)*Vl*Il
printf("\n S=%.2f kVA \n",S*(10^-3))
