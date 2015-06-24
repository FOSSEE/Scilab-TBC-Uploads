// Calculate the resistance of the cell
clc;
Ri=30;
Rf=100;
t=10;
tc=72;
Rt=Ri+(Rf-Ri)*[1-exp(-t/tc)];
disp(Rt,'resistance of the cell (K ohm)')