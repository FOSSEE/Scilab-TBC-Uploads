//clear//
//Caption:Program to plot the voltage and current through a resistor
//Example11.12
//page 386
clear;
close;
clc;
t1 = 0:0.1:2;
t2 = 2:0.1:4;
t3 = 4:0.1:6;
t4 = 6:0.1:8;
VR=[40*ones(1,length(t1)),-20*ones(1,length(t2)),10*ones(1,length(t3)),-5*ones(1,length(t4))];
IR =[-1.2*ones(1,length(t1)),0.6*ones(1,length(t2)),-0.3*ones(1,length(t3)),0.15*ones(1,length(t4))];
subplot(2,1,1)
a=gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-100;10,100];
plot2d([t1,t2,t3,t4],VR,5)
xlabel('                                                          t')
ylabel('                      VR')
title('Resistor Voltage as a function of time')
subplot(2,1,2)
a=gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-1.4;10,1.4];
plot2d([t1,t2,t3,t4],IR,5)
xlabel('                                                          t')
ylabel('                      IR')
title('Current through Resistor as a function of time')
