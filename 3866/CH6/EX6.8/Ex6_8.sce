clc; clear; close;

Reqn=12.5;//in kiloohm
Cg=2;//in fF/micrometer
Ln=0.1;//in micrometer
Ceff=1;//in fF/micrometer
Tinv=3*Reqn*Cg*Ln;
Yinv=Ceff/Cg;
disp(Tinv,'Tinv for 0.13um technology(in picoseconds)=');
disp(Yinv,'Yinv for 0.13um technology=');
