// Calculating the bridge output
clc;
ei=6;
R=10000;
disp('if dR=0.05R')
dR=0.05*R;
eo=[(dR/R)/(4+2*(dR/R))]*ei;
disp(eo,'output voltage (V)')
disp('if dR=-0.05R')
dR=-0.05*R;
eo=[(dR/R)/(4+2*(dR/R))]*ei;
disp(eo,'output voltage (V)')