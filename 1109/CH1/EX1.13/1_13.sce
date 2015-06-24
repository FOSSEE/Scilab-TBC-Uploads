clear;
clc;
a=0.2;b=0.8;c=1;
a1=a*10^-2;b1=b*10^-2;c1=c*10^-2;s=5.57*(10^7);e=2.5;f=100*(10^3);
//e=relative dielectric constant of the material
//s=conductivity of copper
eo=(1/(36*%pi))*10^-9;
Uo=4*%pi*10^-7;
//Uo=absolute permeability
Llf=(((Uo/(2*%pi))*log(b1/a1))+((Uo/(8*%pi))*((((4*c1^4)/(((c1^2)-(b1^2))^2))*log(c1/b1))-((2*c1^2)/((c1^2)-(b1^2))))))*10^3;
printf("-Low frequency inductance = %f mH/km\n",round(Llf*(10^3)*10000)/10000);
Lhf=((Uo/(2*%pi))*log(b1/a1))*10^3;
printf("-High frequency inductance = %f mH/km\n",round(Lhf*(10^3)*1000)/1000);
C=(2*%pi*eo*e/(log(b1/a1)))*10^3;
printf("-Capacitance = %f microfarads/km\n",round(C*(10^6)*10000)/10000);
Rdc=((1/(%pi*s))*((1/(a1^2))+(1/((c1^2)-(b1^2)))))*10^3;
printf("-D.c.resistance = %f ohms/km\n",round(Rdc*1000)/1000);
Rac=((sqrt(f*Uo/(4*%pi*s)))*((1/a1)+(1/b1)))*10^3;
printf("-A.c.resistance = %f ohms/km",round(Rac*100)/100);

