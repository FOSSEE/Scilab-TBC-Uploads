clc; close; clear;

Cgate=1+1;
Cinv=1+2;
LEf=Cgate/Cinv;
LEr=2*Cgate/Cinv;
LE=(LEf+LEr)/2;
disp(LEf,'Falling case Logical effort=');
disp(LEr,'Rising case Logical effort=');
disp(LE,'Average logical effort=');
