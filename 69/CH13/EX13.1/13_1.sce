clear; clc; close;

Ra = 7.5*10^(3);
Rb = 7.5*10^(3);
C = 0.1*10^(-6);

Thigh = 0.7*(Ra+Rb)*C;
Tlow = 0.7*(Rb*C);
T  = Thigh +Tlow;

f = 1/T;

disp(f,'Frequency = ');


x = 0:0.001:1.575;
y = 5*(x<=1.05) + 1*(x>1.05);
plot2d(x,y);
a = gca();
a.data_bounds = [0 0;2 5.2];
a.x_label.text = 'Time(ms)';
a.y_label.text = 'Vo(V)';

