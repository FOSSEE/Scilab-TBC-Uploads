
clc;
VCC=10;
VEE=10;
RC=1*10**3;
RE=5*10**3;
RB=50*10**3;
VBE=0.7;
VE=-VBE;
IE=(VEE-VBE)/RE;
disp('mA',IE*10**3,"IE=");
IC=IE;
disp('mA',IC*10**3,"IC=");
VC=VCC-IC*RC;
VCE=VC-VE;
disp('volts',VCE*1,"VCE=");
