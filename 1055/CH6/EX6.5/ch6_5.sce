//To determine the corona characterstics
clear
clc;
D=1.036;// conductor diameter(cm)
d=2.44;//delta spacing(m)
r=D/2;//radius(cm)
Ratio=d*100/r;
j=r/(d*100);
Rat2=sqrt(j);
t=26.67;//temperature
b=73.15;// barometric pressure
mv=.72;
V=63.5;
f=50;//frequency
do=3.92*b/(273+t);//do=dell
vd=21.1*.85*do*r*log(Ratio);
mprintf("critical disruptive voltage=%.2f kV\n",vd);
Vv=21.1*mv*do*r*(1+ (.3/sqrt(r*do)))*log(Ratio);
Pl=241*(10^-5)*(f+25)*Rat2*((V-vd)^2)/do;//power loss
Vd=.8*vd;
Pl2=241*(10^-5)*(f+25)*Rat2*((V-Vd)^2)*160/do;//loss per phase /km
Total= 3*Pl2;
mprintf("visual critical voltage=%.0f kV\n",Vv);
mprintf("Power loss=%.3f kW/phase/km\n",Pl);
mprintf("under foul weather condition ,\n");
mprintf("critical disruptive voltage=%.2f kV\n",Vd);
mprintf("Total loss=%.0f kW\n",Total);
