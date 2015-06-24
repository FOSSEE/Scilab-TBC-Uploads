clc;
clear;
printf("\t\t\tChapter7_example1\n\n\n");
printf("\t\t\tSolution to part (a)\n");
// determination of boundary layer growth with length
// properties of air at 27 degree celsius from appendix table D.1
rou=1.177; // density in kg/cu.m
v=15.68e-6; // viscosity in sq.m/s
L=0.5; // length in m
V_inf=1; // air velocity in m/s
Re= (V_inf*L)/v; // Reynolds Number
printf("The Reynolds Number is %.2e ",Re);
// Reynolds Number is less than 5e5 hence the flow is laminar and Blasius Solution applies
x=[0 0.125 0.25 0.375 0.5]; // distances in m where boundary layer growth is determined
[n,m]=size(x);
for i=1:m
    delta(i)=5*x(i)^0.5/(V_inf/v)^0.5;
end
subplot(211);
plot(x,delta);
a=gca();
newTicks=a.x_ticks;
newTicks(2)=[0;0.125;0.25;0.375;0.5];
newTicks(3)=['0';'0.125';'0.25';'0.375';'0.50'];
a.x_ticks=newTicks;
title('Boundary-layer growth with distance');
xlabel('x, m');
ylabel('delta, m^(1/2)');
printf("\n\t\t\tSolution to part (b)\n");
// produce graph of velocity distribution at x=0.25 m
eta=0:5;
[p,q]=size(eta);
f=[0 0.32979 0.62977 0.84605 0.95552 0.99155];//value for f for corresponding eta value from Table 7.1
for j=1:q
    y(j)=eta(j)*(v*0.25)^0.5;
end
printf("\n\t\t\tResults of Calculations for Example 7.1\n");
printf("\teta\t\ty,m\t\t\tf=vx, m/s\n");
for i=1:q
printf("\t%d\t\t%.2e\t\t%.5f\n",eta(i),y(i),f(i));
end
subplot(212);
plot(f,y);
b=gca();
newTicks1=b.x_ticks;
newTicks1(2)=[0;0.25;0.5;0.75;1.0];
newTicks1(3)=['0';'0.25';'0.5';'0.75';'1.0'];
b.x_ticks=newTicks1;
newTicks2=b.y_ticks;
newTicks2(2)=[0;0.0025;0.005;0.0075;0.010];
newTicks2(3)=['0';'0.0025';'0.005';'0.0075';'0.010'];
b.y_ticks=newTicks2;
title('Velocity Distribution at x=0.25 m');
xlabel('Vx, m/s');
ylabel('y, m');
printf("\t\t\tSolution to part (c)\n");
// calculation of absolute viscosity
gc=1;
mu=rou*v/gc;
printf("\nThe absolute viscosity is %.3e N.s/sq.m",mu);
b=1; // width in m
Df=0.664*V_inf*mu*b*(Re)^0.5;
printf("\nThe skin-drag is %.2e N",Df);
printf("\nThe skin-drag including both sides of plate is %.2e N",2*Df);
