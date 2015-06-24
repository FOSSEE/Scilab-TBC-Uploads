clc;
clear;
format('v',11);
Q=1*10^-9;
disp("path of the integration is along a line parallel to the x-axis as y and z are fixed with y=z=1.");
W=-Q*integrate('x','x',1,0);         //putting y=z=1.
disp(W,"work done(in joule)=");
