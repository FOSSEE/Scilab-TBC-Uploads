clear;
clc;
V=230;
E=150;
R=8;
a=35;
th1=asind(E/(sqrt(2)*V));
th2=180-th1;
I_o=(1/(2*%pi*R))*(sqrt(2)*230*(cosd(a)-cosd(th2))-E*((th2-a)*%pi/180));    
printf("avg charging curent=%.4f A",I_o);

P=E*I_o;    printf("\npower supplied to the battery=%.2f W",P);
I_or=sqrt((1/(2*%pi*R^2))*((V^2+E^2)*((th2-a)*%pi/180)-(V^2/2)*(sind(2*th2)-sind(2*a))-2*sqrt(2)*V*E*(cosd(a)-cosd(th2))));
P_r=I_or^2*R;    printf("\npower dissipated by the resistor=%.2f W",P_r);

pf=(P+P_r)/(V*I_or);    printf("\nsupply pf=%.4f",pf);
//Answers have small variations from that in the book due to difference in the rounding off of digits.