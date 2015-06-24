//clear//
//Caption:Orthonormal basis for given set of signals
//Example3.1:Finding orthonormal basis for the given signals
//using Gram-Schmidt orthogonalization procedure
clear;
close;
clc;
T = 1;
t1 = 0:0.01:T/3;
t2 = 0:0.01:2*T/3;
t3 = T/3:0.01:T;
t4 = 0:0.01:T;
s1t = [0,ones(1,length(t1)-2),0];
s2t = [0,ones(1,length(t2)-2),0];
s3t = [0,ones(1,length(t3)-2),0];
s4t = [0,ones(1,length(t4)-2),0];
t5 = 0:0.01:T/3;
phi1t =  sqrt(3/T)*[0,ones(1,length(t5)-2),0];
t6 =T/3:0.01:2*T/3;
phi2t = sqrt(3/T)*[0,ones(1,length(t6)-2),0];
t7 = 2*T/3:0.01:T;
phi3t = sqrt(3/T)*[0,ones(1,length(t7)-2),0];
//
figure
title('Figure3.4(a) Set of signals to be orthonormalized')
subplot(4,1,1)
a =gca();
a.data_bounds = [0,0;2,2];
plot2d2(t1,s1t,5)
xlabel('t')
ylabel('s1(t)')
subplot(4,1,2)
a =gca();
a.data_bounds = [0,0;2,2];
plot2d2(t2,s2t,5)
xlabel('t')
ylabel('s2(t)')
subplot(4,1,3)
a =gca();
a.data_bounds = [0,0;2,2];
plot2d2(t3,s3t,5)
xlabel('t')
ylabel('s3(t)')
subplot(4,1,4)
a =gca();
a.data_bounds = [0,0;2,2];
plot2d2(t4,s4t,5)
xlabel('t')
ylabel('s4(t)')
//
figure
title('Figure3.4(b) The resulting set of orthonormal functions')
subplot(3,1,1)
a =gca();
a.data_bounds = [0,0;2,4];
plot2d2(t5,phi1t,5)
xlabel('t')
ylabel('phi1(t)')
subplot(3,1,2)
a =gca();
a.data_bounds = [0,0;2,4];
plot2d2(t6,phi2t,5)
xlabel('t')
ylabel('phi2(t)')
subplot(3,1,3)
a =gca();
a.data_bounds = [0,0;2,4];
plot2d2(t7,phi3t,5)
xlabel('t')
ylabel('phi3(t)')
