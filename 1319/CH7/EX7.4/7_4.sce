//Calculate E per phase and Current and pf

clc;
clear;

V=2300;
delta=20;
Pd=255*735.5; // Power delivered converted to W from HP
Xs=10;
eff=90/100; //Efficiency

P=Pd/eff;

E=poly([0 1],'E','c');

x=(sqrt(3)*E*V*sind(delta))-(P*Xs); // Characteristic Equation to find E

E=roots(x);

Vph=V/(sqrt(3));// Phase Voltage

I=((Vph*expm(%i*0))-(E*expm(%i*(-%pi/9))))/(%i*Xs);// Current Eqaution

[Im,phi]=polar(I); // Angle in radians and magnitude

phid=(abs(phi)/%pi)*180;// Power Factor Angle in Degrees

pf=cosd(phid);

// High Precision Answers
printf('a) E per phase = %g V \n',E)
disp('amperes',I,'b) I =')
printf('\n c) p.f = %g lead \n',pf)

