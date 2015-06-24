
clear; clc;
xdel(winsid());  //close all windows

s = %s;
G = syslin('c',(s+2)/((s+3)*(s^2+2*s+2)));
evans(G,10);
xgrid();
a = gca();
a.box = "on";
a.data_bounds = [-6 -3; 2 3];
a.children(1).visible = 'off';
xtitle('Root locus of G(s) = (s+2)/ ((s+3)*(s^2+2*s+2))');
up = roots(numer(G));disp(up,"zero of G(s)=");
down = roots(denom(G));disp(down,"poles of G(s)=");
test = -1+%i;
//calculating the angle made by the vector from zero to the pole
zeroangle = atan((imag(down(2))-imag(up)),(real(down(2))-real(up)))*180/%pi;
//calculating the angle made by the vector from rest of the poles to the pole
pole1angle = atan((imag(down(2))-imag(down(1))),(real(down(2))-real(down(1))))*180/%pi;

pole3angle = atan((imag(down(2))-imag(down(3))),(real(down(2))-real(down(3))))*180/%pi;
//angle of departure = 180-(sum of angles from the rest of the poles)+(sum of angles from the zeroes)
depang = 180-(pole1angle+pole3angle)+zeroangle;
disp(depang,"=",down(2),"angle of departure from ");
