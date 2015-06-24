clc;
clear;
format('v',11);
N=4;
disp("E=|sin(2*theta)/(N*sin(theta/2))|","The array factor is given as");
Eslmax=abs(1/(4*sin(3*%pi/4)));                     //for the first sidelobe,the sidelobe maximum is at 2*theta=3*%pi/2.
Edb=20*log10(Eslmax);
disp(Eslmax,"The sidelobe level=");
disp(Edb,"The sidelobe level(in db)=");
