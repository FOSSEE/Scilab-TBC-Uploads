//clear//
//Caption:Digital Representation of Analog signal
//Figure 1.2: Analog to Digital Conversion
clear;
close;
clc;
t = -1:0.01:1;
x = 2*sin((%pi/2)*t);
dig_data = [0,1,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0,1,0,1]
//
figure
a=gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds =[-2,-3;2,3]
plot(t,x)
plot2d3('gnn',0.5,sqrt(2),-9)
plot2d3('gnn',-0.5,-sqrt(2),-9)
plot2d3('gnn',1,2,-9)
plot2d3('gnn',-1,-2,-9)
xlabel('                                                         Time')
ylabel('                                                      Voltage')
title('Analog Waveform')
//
figure
a = gca();
a.data_bounds = [0,0;21,5];
plot2d2([1:length(dig_data)],dig_data,5)
title('Digital Representation')
