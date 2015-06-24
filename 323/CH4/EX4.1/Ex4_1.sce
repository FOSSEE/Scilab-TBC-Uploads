//Chapter 4,Ex4.1,Pg 4.8
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
Vl=440 //Supply voltage
f=50 //Freq in hertz
Vph=Vl/sqrt(3) //Phase voltage
printf("\n Vph=%.2f V \n",Vph)
Zbarph=rect2polar(8,10) //Converting Zbarph from rectangular coordinates to polar coordinates
printf("\n r=%.2f \n",Zbarph(1))
printf("\n theta=%.2f \n",Zbarph(2))
Iph=Vph/Zbarph(1) //Phase current
printf("\n Iph=%.2f A \n",Iph)
Il=Iph //Line current
P=sqrt(3)*Il*Vl*cos(Zbarph(2)*%pi/180)
P=P*(10^-3) //Active power
Q=sqrt(3)*Vl*Il*sin(Zbarph(2)*%pi/180)
Q=Q*(10^-3) //Reactive power
printf("\n P=%.2f kW \n",P)
printf("\n Q=%.2f kVAR \n",Q)

