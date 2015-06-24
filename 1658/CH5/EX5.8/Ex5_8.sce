clc;
PD=0.5;
VF=1;
VBR=150;
IF=(PD/VF);
disp('A',IF*1,"IF=");
IR=(PD/VBR);
disp('mA',IR*10**3,"IR=");
