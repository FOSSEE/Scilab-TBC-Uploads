clc;
VCC=24;
RC=10*10**3;
RE=270;
VBE=0.7;
B=45;
VCE=5;
IC=(VCC-VCE)/RC;
disp('mA',IC*10**3,"IC=");
RB=(2.6*10^3)*B;
disp('kohm',RB*10**-3,"RB=")

