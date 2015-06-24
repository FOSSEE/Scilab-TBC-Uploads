clc;
clear;
format('e',11)
Q=1*10^-9;
r0=[3 5 6];
r1=[0 0 0];
R01=r1-r0;
disp("The parametric eqution of the straight line joining these two points:")
disp("z=6(1-t)","y=5(1-t)","x=3(1-t)");             //using r=r0+tR01.
W=1305*Q*integrate('(1-t)^3','t',0,1);              //using parametric equation.
disp(W,"work done(in joule)=");
