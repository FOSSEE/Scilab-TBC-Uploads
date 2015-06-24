//clear//
//Example 5.9:Time Expansion Property of DTFT
clear;
close;
clc;
n = -1:11;
x = [0,1,2,1,2,1,2,1,2,1,2,0,0];
y = [1,1,1,1,1];
y_2_n =zeros(1,2*length(y)+1);
y_2_n(1:2:2*length(y)) = y;
y_2_n = [0 y_2_n 0];
y_2_n_1 = [0,y_2_n(1:$-1)];
x_r = y_2_n+2*y_2_n_1;
y = [0,y,zeros(1,7)];
figure
subplot(4,1,1)
plot2d3('gnn',n,y)
title('y[n]')
subplot(4,1,2)
plot2d3('gnn',n,y_2_n)
title('y(2)[n]')
subplot(4,1,3)
plot2d3('gnn',n,y_2_n_1)
title('y(2)[n-1]')
subplot(4,1,4)
plot2d3('gnn',n,x)
title('x[n]=y(2)[n]+2*y(2)[n-1]')
