clc; clear; close;

//a
C1=100;//in fF
C2=20;//in fF;
V1=0//in volts
V2=1.2;//in volts
V=(C1*V1+C2*V2)/(C1+C2);
disp(V,'A) V*(in volts)=');

//b
C1=20;//in fF
C2=20;//in fF;
V1=0//in volts
V2=1.2;//in volts
V=(C1*V1+C2*V2)/(C1+C2);
disp(V,'B) V*(in volts)=');

//c
C1=20;//in fF
C2=100;//in fF;
V1=0//in volts
V2=1.2;//in volts
V=(C1*V1+C2*V2)/(C1+C2);
disp(V,'C) V*(in volts)=');
mprintf('\n  Last solution is not possible since V cannot rise above Vdd-Vtn\n');
