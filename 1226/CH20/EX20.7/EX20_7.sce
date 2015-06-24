clc;funcprot(0);//EXAMPLE 20.7
// Initialisation of Variables
FAD=14;...........//Free air delivered in m^3/min
p1=0.95;.........//Induction pressure in bar
t1=305;........//Induction temperature in K
p2=7;...........//Delivery pressure in bar
n=1.3;...........//Adiabatic index
VcbyVs=0.05;........//Ratio of clearance volume and swept volume
R=287;...........//Gas constant in J/kgK
t=288;...........//free air temperature in K
p=1.013;.........//free air pressure in bar
//Calculations
m=(p*100000*FAD)/(R*t);..........//Mass delivered per min in kg
t2=t1*((p2/p1)^((n-1)/n));
IP=((n/(n-1))*m*(R/1000)*(t2-t1))/60;.........//Indicated power in kW
disp(IP,"Indicated power in kW:")
v4byv3=(p2/p1)^(1/n);v4byvs=v4byv3*VcbyVs;v1minv4=(1+VcbyVs)-v4byvs;
Vbyvs=v1minv4*(t/t1)*(p1/p);
etav=Vbyvs/1;.............//Volumetric efficiency
disp(etav*100,"Volumetric efficiency in %:")

