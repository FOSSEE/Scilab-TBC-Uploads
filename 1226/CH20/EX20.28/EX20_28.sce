clc;funcprot(0);//EXAMPLE 20.28
// Initialisation of Variables
p1=1;.............//Intake pressure in bar
p4=36;........//Final pressure in bar
n=1.25;.........//Compression index
R=0.287;.......//Gas constant in kJ/kgK
t1=300;..........//Intake temperature in K
ns=3;...........//No of stages
v=15;..........//Volume of air delivered in m^3
//Calculations
p2=p1*((p4/p1)^(1/ns));
p3=p2*((p4/p1)^(1/ns));
printf("\n\nIntermediate pressures\n\n  p2=%f\n  p3=%f\n\n",p2,p3)
t2=t1*((p4/p1)^(((n-1)/n)*(1/ns)));....//Delivery temperature  in K
m=p1*10^5*v/(R*1000*t1);...........//Mass of air handled per min in kg
Wt=((n/(n-1))*m*R*(1/60)*(t2-t1)*ns);........//Total work done in three stages 
disp(Wt,"Indicated power required in kW:")
