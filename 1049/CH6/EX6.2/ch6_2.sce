clear;
clc;
V=230;
E=150;
R=8;
th1=asind(E/(sqrt(2)*V));
I_o=(1/(2*%pi*R))*(2*sqrt(2)*230*cosd(th1)-E*(%pi-2*th1*%pi/180));    
printf("avg charging curent=%.4f A",I_o);

P=E*I_o;    printf("\npower supplied to the battery=%.2f W",P);
I_or=sqrt((1/(2*%pi*R^2))*((V^2+E^2)*(%pi-2*th1*%pi/180)+V^2*sind(2*th1)-4*sqrt(2)*V*E*cosd(th1)));
P_r=I_or^2*R;    printf("\npower dissipated by the resistor=%.3f W",P_r);

pf=(P+P_r)/(V*I_or);    printf("\nsupply pf=%.3f",pf);