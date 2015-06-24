clear;
clc;
Ho=10,n=200*%e^(%i*%pi/6),P=atan(3^.5),b=.5,e=10^-9 /(36*%pi);
Eo=n*Ho;
disp('a=w*sqrt(u*e/2*(1+(c/(w*e)^2)^.5)-1)');
disp('b=w*sqrt(u*e/2*(1+(c/(w*e)^2)^.5)+1)');
a=b*((sqrt(((1+(tan(P))^2)^.5)-1))/(sqrt(((1+(tan(P))^2)^.5)+1)));
disp(a,'Value of alpha=');
disp(1/a,'Skin depth = ')