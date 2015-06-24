clc;
clear;
format('v',11);

//part a
F=[100*cosd(30) 100*sind(30)];
d=[100 0];
W=F.*d;
disp(W(1),"work done(in joule)=");

//part b
W=integrate('10*x*cosd(30)','x',0,100);
disp(W,"work done(in joule)=");
