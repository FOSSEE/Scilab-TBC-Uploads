clear;
clc;
Ka=0.2*exp(%i*(-%pi/(180/30)));d=1/12;
Kb=Ka/exp(%i*%pi*4*d);
printf("Desired value of voltage reflection coefficient = %f /_ %f",abs(Kb),atan(imag(Kb),real(Kb))*180/%pi);
