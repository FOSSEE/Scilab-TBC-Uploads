clear;
clc;
V_s=230;//V
V_m=V_s*sqrt(2);
E=150;//V
theta1=asind(E/(sqrt(2)*V_s));
R=8;//ohm
f=50;//Hz
I_o=(1/(2*%pi*R))*((2*sqrt(2)*V_s*cosd(theta1))-E*(%pi-2*theta1*%pi/180));
printf("avg value of charging current=%.4f A",I_o);
P_d=E*I_o;    printf("\npower delivered to battery=%.2f W",P_d);
I_or=sqrt((1/(2*%pi*R^2))*((V_s^2+E^2)*(%pi-2*theta1*%pi/180)+V_s^2*sind(2*theta1)-4*V_m*E*cosd(theta1)));    printf("\nrms value of the load current=%.4f A",I_or);
pf=(E*I_o+I_or^2*R)/(V_s*I_or);    printf("\nsupply pf=%.3f",pf);
P_dd=I_or^2*R;    printf("\npower dissipated in the resistor=%.2f W",P_dd);
q=1000.00;//Wh
t=q/P_d;    printf("\ncharging time=%.3f hr",t);
n=P_d*100/(P_d+P_dd);    disp(n,"rectifier efficiency(%)");
PIV=sqrt(2)*V_s+E;    printf("PIV of diode=%.2f V",PIV);
//solutions have small variations due to difference in rounding off of digits
