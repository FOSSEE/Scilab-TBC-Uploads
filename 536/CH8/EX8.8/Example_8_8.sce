clc;
clear;
printf("\n Example 8.8\n");

eta=0.50;
Q=[0.0028 0.0039 0.0050 0.0056 0.0059]
h=[23.2 21.3 18.9 15.2 11.0]
plot(Q,h,'o-');
//The head to be developed, h=10+4.12*u^2 m water
//h=10+2.205e5*Q^2
Q1=0.0015:0.0001:0.0060
h1=10+2.205e5*Q1^2;
plot2d(Q1,h1,style=1);
xtitle("Data for Example 8.8","Discharge (Q m^3/s)","Head (m water)");
legend("Pump characteristics","h=10+2.205e5*Q^2");
//showing the intersection point
x1=[0 0.0054];
y1=[16.43 16.43];
x2=[0.0054 0.0054];
y2=[0 16.43];
plot(x1,y1,x2,y2);
Q_r=0.0054;
printf("\n The discharge at the point of intersection between\n the purnp characteristic equation = %.4f m^3/s",Q_r);
h_r=10+2.205e5*Q_r^2;
printf("\n The total head developed = %.2f m",h_r);
P=Q_r*1000*h_r*9.81/eta;
printf("\n Power required = %.0f W = %.2f kW",P,P*1e-3);