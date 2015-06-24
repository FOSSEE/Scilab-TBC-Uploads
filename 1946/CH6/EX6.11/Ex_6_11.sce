// Example 6.4;//threshold coefficient gain
clc;
clear;
close;
R1=0.35;
R2=0.35;
alpha=1.5;// in per meter
L=0.5;//in mm
t=0.8;//confinement factor
gth=alpha+(1/(2*L)*log(1/(R1*R2)));
Tc= gth/t;// threshold coefficient gain in per mm
disp(Tc,"threshold coefficient gain in per mm ")
