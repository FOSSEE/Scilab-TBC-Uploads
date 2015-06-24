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
clc;
//Refer to the data given in the question
R=9 //resistance in ohms
Xl=12 //Reactance in ohms
f= 50// Frequence of supply in hertz
Vl=440 //Supply voltage in V
Vph=Vl //For delta connected load 
Zbarph=rect2polar(9,12)
r=Zbarph(1)
phi=Zbarph(2)
printf("\n Zph=%.2f ohms \n",r)
printf("\n phi=%.2f degrees \n",phi)
phi=phi*%pi/180 //Converting degrees to radians
Iph=Vph/r
printf("\n Iph=%.2f A \n",Iph)
Il=sqrt(3)*Iph
printf("\n Il=%.1f A \n",Il)
printf("\n Power factor =%.1f (lagging) \n",cos(phi))
S=sqrt(3)*Vl*Il //Total power
printf("\n S=%.2f kVA \n",S*(10^-3))
P=sqrt(3)*Vl*Il*cos(phi)
printf("\n P=%.2f kW \n",P*(10^-3))
Q=sqrt(3)*Vl*Il*sin(phi)
printf("\n Q=%.2f kVAR \n",Q*(10^-3))
//If the coils were in star connection
Vph=Vl/sqrt(3)
printf("\n Vph=%.2f V \n",Vph)
Iph=Vph/r
Il=Iph
printf("\n Iph=%.2f A \n",Iph)
pf=cos(phi)
printf("\n Power factor=%.1f (lagging) \n",pf)
S=sqrt(3)*Vl*Il
printf("\n total power=%.2f kVA \n",S*(10^-3))
P=sqrt(3)*Iph*pf
printf("\n P=%.2f kVA \n",P*(10^-3))
Q=sqrt(3)*Vl*Iph*(sqrt(1-pf^2))
printf("\n Q=%.2f kVAR \n",Q*(10^-3))
