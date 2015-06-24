//CTFT of Periodic Impulse Train
clear;
clc;
close;
// CTFT
T = -4:4;;
T1 = 1; 
xt = ones(1,length(T));
ak = 1/T1;
XW = 2*%pi*ak*ones(1,length(T));
Wo = 2*%pi/T1;
W = Wo*T;
figure
subplot(2,1,1)
plot2d3('gnn',T,xt); 
xlabel('                    t');
title('Periodic Impulse Train')
subplot(2,1,2)
plot2d3('gnn',W,XW);
xlabel('                   t');
title('CTFT of Periodic Impulse Train')
