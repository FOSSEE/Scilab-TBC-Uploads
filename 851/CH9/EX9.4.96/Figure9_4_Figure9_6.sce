//clear//
//Caption:Direct Sequence Spread Coherent BPSK
//Figure 9.4:Generation of waveforms in DS/BPSK spread spectrum transmitter
clear;
close;
clc;
t = 0:13;
N = 7;
wt = 0:0.01:1;
bt = [1*ones(1,N) -1*ones(1,N)];
ct = [0,0,1,1,1,0,1,0,0,1,1,1,0,1];
ct_polar = [-1,-1,1,1,1,-1,1,-1,-1,1,1,1,-1,1];
mt = bt.*ct_polar;
Carrier = 2*sin(wt*2*%pi);
st = [];
for i = 1:length(mt)
  st = [st mt(i)*Carrier];
end
//
figure
subplot(3,1,1)
a =gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t,bt,5)
xlabel('                                                               t')
title('Data b(t)')
subplot(3,1,2)
a =gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t,ct_polar,5)
xlabel('                                                                t')
title('Spreading code c(t)')
subplot(3,1,3)
a =gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t,mt,5)
xlabel('                                                               t')
title('Product Signal m(t)')
//
figure
subplot(3,1,1)
a =gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t,mt,5)
xlabel('                                                                t')
title('Product Signal m(t)')
subplot(3,1,2)
a =gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-2;20,2];
plot(Carrier)
xlabel('                                                               t')
title('Carrier Signal')
subplot(3,1,3)
a =gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [0,-2;20,2];
plot(st)
xlabel('                                                               t')
title('DS/BPSK signal s(t)')
//
