//clear//
//Caption:Bound on Aliasing error for Time-shifted sinc pulse
//Example4.1:Maximum bound on aliasing error for sinc pulse
clc;
close;
t = -1.5:0.01:2.5;
g = 2*sinc_new(2*t-1);
disp(max(g),'Aliasing error cannot exceed max|g(t)|')
f = -1:0.01:1;
G = [0,0,0,0,ones(1,length(f)),0,0,0,0];
f1 = -1.04:0.01:1.04;
subplot(2,1,1)
a=gca();
a.data_bounds =[-3,-1;2,2];
a.x_location = "origin"
a.y_location = "origin"
plot2d(t,g)
xlabel('                                      t')
ylabel('                                      g(t)')
title('Figure 4.8 (a) Sinc pulse g(t)')
subplot(2,1,2)
a=gca();
a.data_bounds =[-2,0;2,2];
a.x_location = "origin"
a.y_location = "origin"
plot2d2(f1,G)
xlabel('                                      f')
ylabel('                                      G(f)')
title('Figure 4.8 (b) Amplitude spectrum |G(f)|')
