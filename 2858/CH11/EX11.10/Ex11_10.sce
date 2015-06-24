//example 11.10
clc; funcprot(0);
Hp=350;
vp=0.0016;
Sl=0.762e-3;
f=115;
Qu=(0.746*Hp+98*vp)/(vp+Sl*f);
disp(Qu,"ple load capacity in kN");
