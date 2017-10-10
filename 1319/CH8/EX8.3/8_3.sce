// To Calculate Parameters of a 3 phase 4 pole induction machine.

clc;
clear;

V1=200;
R2=0.1;
X2=0.9;
f=50;
p=4;
s=4/100;
a=0.67; // The Ratio of rotor to stator turns

P=((a*V1)^2)*R2*(1-s)*s/(((R2)^2)+((s*X2)^2)); // Power Delivered referred to the rotor side ( Mechanical Power)

N=120*f/p;// Rated Speed

N1=N*(1-s);// Speed at 4% slip

T4=P*60/(2*%pi*N1); // Total Torque at 4% slip

sm=floor((R2/X2)*1000)/1000; // Condition for Maximum Torque

Pmax=((a*V1)^2)*R2*(1-sm)*sm/((R2^2)+((sm*X2)^2));// Power at maximum torque

Nmax=ceil(N*(1-sm)); // Speed at Maximum Torque

Tmax=Pmax*60/(2*%pi*Nmax); // Maixmum Torque

// Please Note that the answers are accurate and no quantities are neglected as in the text book.
printf('a) Total torque at 4 percent slip = %g Nm \n',T4)
printf('b) Total Mechanical Power at 4 percent slip = %g watts or %g H.P \n',P,(P/735))
printf('c) Maximum Torque = %g Nm \n',Tmax)
printf('d) Speed at maximum torque = %g rpm \n',Nmax)
printf('e) Maximum Mechanical Power = %g watt or %g H.P \n',Pmax,(Pmax/735))

