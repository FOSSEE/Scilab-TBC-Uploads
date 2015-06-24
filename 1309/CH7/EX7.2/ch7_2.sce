clc;
clear;
printf("\t\t\tChapter7_example2\n\n\n");
// determination of temperature profile
// properties of water at (40 + 100)/2 = 70°F = 68°F from appendix table C11
rou= 62.4; // density in Ibm/ft^3 
cp=0.9988; // specific heat BTU/(lbm-degree Rankine) 
v= 1.083e-5; // viscosity in sq.ft/s 
kf = 0.345 ; // thermal conductivity in BTU/(hr.ft.degree Rankine) 
a = 5.54e-3; // diffusivity in sq.ft/hr 
Pr = 7.02; // Prandtl Number
V=1.2; // velocity in ft/s
x=[1 2]; // distances from plate entry in ft
for i=1:2
Re(i)=(V*x(i))/v; // Reynolds Number at x=1 ft
printf("\nThe Reynolds Number at x=%d ft is %.3e",i,Re(i));
// since Reynolds Number is less than 5*10^5, the flow is laminar
hL(i)=0.664*Pr^(1/3)*Re(i)^0.5*kf/x(i);
printf("\nThe average convection coefficient at x=%d is %.1f BTU/(hr. sq.ft. degree Rankine)",i,hL(i));
Tw=100; // temperature of metal plate in degree fahrenheit
T_inf=40; // temperature of water in degree fahrenheit
A(i)=x(i)*18/12; // cross sectional area for 1 ft length
q(i)=hL(i)*A(i)*(Tw-T_inf);
printf("\nThe heat transferred to water over the x=%d ft is %.3e BTU/hr",i,q(i));
end
eta=0:0.2:1.2;
[n m]=size(eta);
theta=[1 .75 .51 .31 .17 .08 0.01]; // values of dimensionless temperature from figure 7.7 corresponding to eta value taken
for i=1:m
y(i)=eta(i)*(v*x(1)/V(1))^0.5;
T(i)=theta(i)*(Tw-T_inf)+T_inf;
end
printf("\nSolution Chart for example 7.2\n");
printf("\teta\t\ttheta\t\ty, ft\t\t\tT, degree F\n");
for i=1:m
printf("\t%.1f\t\t%.2f\t\t%.1e\t\t\t%.1f\n",eta(i),theta(i),y(i),T(i));
end
plot(T,y);
a=gca();
newTicks=a.x_ticks;
newTicks(2)=[100; 90; 80; 70; 60;50; 40];
newTicks(3)=['100'; '90'; '80'; '70'; '60';'50'; '40'];
a.x_ticks=newTicks;
newTicks1=a.y_ticks;
newTicks1(2)=[0; 0.001; 0.002; 0.003; 0.004];
newTicks1(3)=['0'; '0.001'; '0.002'; '0.003'; '0.004'];
a.y_ticks=newTicks1;
a.axes_reverse=["on","off"];
xgrid(1);
title('Temperature variation (at x = 1 ft) within the boundary layer for the water');
xlabel('T, degree Fahrenheit');
ylabel('y, ft');
