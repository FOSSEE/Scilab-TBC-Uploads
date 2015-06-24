
clc;
VCC=8;
VRC=0.5;
RC=800;
a=0.96;
VCE=VCC-VRC;//VRC=IC*RC
IC=VRC/RC;
disp('mA',IC*10**3,"IC=");
IE=IC/a;
disp('mA',IE*10**3,"IE=");
IB=IE-IC;
disp('microA',IB*10**6,"IB=");
