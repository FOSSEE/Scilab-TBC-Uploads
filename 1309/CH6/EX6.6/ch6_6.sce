clc;
clear;
printf("\t\t\tChapter6_example6\n\n\n");
// determibation of heat gained
// air properties to be calculated at T=(72+45)/2=58.5 degree Fahrenheit
// properties at T=58.5 degree fahrenheit from appendix table D1
p = 0.077; // density in lbm/ft^3 
cp = 0.240; // specific heat in BTU/(lbm.degree Rankine) 
v = 15.28e-5; // viscosity in ft^2/s 
kf = 0.0146; // thermal conductivity in BTU/(hr.ft."R) 
a = 0.776; // diffusivity in ft^2/hr 
Pr = 0.711; // prandtl number 
D=7/12; // diameter in ft
L=40; // length in ft
Tbo=72; // outlet temperature in degree Fahrenheit
Tbi=45; // inlet temperature in degree Fahrenheit
A=%pi*(D^2)/4; // cross sectional area of duct in ft^2
// density at outlet temperature in lbm/ft^3 
rou_o=.0748;
V=10; // average velocity in ft/s
mass_flow=rou_o*A*V;
printf("\nThe mass flow rate is %.1f lbm/s",mass_flow);
// average velocity evaluated by using the average bulk temperature
V_avg=mass_flow/(p*A);
printf("\nThe average velocity evaluated by using the average bulk temperature is %.2f ft/s",V_avg);
Re=(V_avg*D)/v;
printf("\nThe Reynolds number for the flow is %.3e ",Re);
// the flow is in turbulent regime
q=mass_flow*cp*(Tbo-Tbi);
printf("\nThe heat gained by air is %.3f BTU",q);
hc=1; // convection coefficient between the outside duct wall and the attic air in BTU/(hr. sq.ft.degree Rankine).
T_inf=105; // The temperature of attic air surrounding the duct in degree Fahrenheit
hz=(0.023*Re^(4/5)*Pr^0.4)*kf/D; // The local coefficient at the duct end is %.2f BTU/(hr. sq.ft.degree Rankine)
printf("\nThe local coefficient at the duct end is %.2f BTU/(hr. sq.ft.degree Rankine)",hz);
qw=(T_inf-Tbo)/((1/hc)+(1/hz)); // wall flux in BTU/(hr. sq.ft.degree Rankine)
printf("\nThe wall flux is %.1f BTU/(hr. sq.ft.degree Rankine)",qw);
Two=qw*(1/hz)+Tbo; // The wall temperature at exit in degree Fahrenheit
printf("\nThe wall temperature at exit is %.1f degree Fahrenheit",Two);
