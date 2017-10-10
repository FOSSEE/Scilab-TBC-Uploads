clc; close; clear;

Cload=200;//in fF
Cin=1;//in fF
N=3;
Tinv=7.5;//in picoseconds
Y=0.5;
f=(Cload/Cin)^(1/N);
disp(f,'Fanout ratio for 3 stage inverter=');
tdelay=3*Tinv*(f+Y);
disp(tdelay,'total delay in 3 stage case(in picoseconds)=');
f1=3.6;//estimated
N1=log(Cload/Cin)/log(f1);
g=round(N1);
disp(N1,'N=');
f2=(Cload/Cin)^(1/g);
disp(f2,'recomputed fanout ratio for 4 stage=');
tdelay1=4*Tinv*(f2+Y);
disp(tdelay1,'total delay in 3 stage case(in picoseconds)=');
//answers vary due to round off error
