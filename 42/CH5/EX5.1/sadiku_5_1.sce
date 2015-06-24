clear;
clc;
r=.2;
disp('J=1/r3(2cosP ar + sinP a)')
I=(2/r)*integrate('sin(P)*cos(P)','P',0,%pi/2)*integrate('1','Q',0,2*%pi);
disp(I,'Current passing through Hemispherical shell');
I=(2/r)*integrate('sin(P)*cos(P)','P',0,%pi,10^-10)*integrate('1','Q',0,2*%pi);
disp(I,' Current through spherical shell= ');