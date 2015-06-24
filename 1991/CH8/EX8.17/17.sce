clc
clear
//input
r=200 //resistence
v=14 //voltage
vr=9//pd across each component
f=90 //frequency
//calculation
c=vr/(2*%pi*f*vr*r)//capacitor connected
//output
printf("the capacitor connected is %3.3e F",c)
