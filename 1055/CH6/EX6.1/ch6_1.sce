//To determine the critical disruptive voltage and critical voltage for local and general corona.
clear
clc;
t=21;// air temperature
b=73.6;// air pressure
do=3.92*73.6/(273+t);
m=.85;
r=.52;
d=250;
Vd=21.1*m *do*r*log(250/.52);
vd=sqrt(3)*Vd;
m=.7;
vv=21.1*m*do*r*(1+ (.3/sqrt(r*do)))*log(250/.52);
Vv=vv*sqrt(3);
Vvg=Vv*.8/.7;
mprintf("critical disruptive line to line voltage=%.2f kV \n",vd);
mprintf("visual critical voltage for local corona=%.2f kV \n",vv);
mprintf("visual critical voltage for general corona=%.2f kV \n",Vvg);
