clc;
clear;
exec("C:\Program Files\scilab-5.3.0\bin\TCP\12_8data.sci");
rm=0.5*(ro+ri)/12;
U=(N*2*%pi/60)*rm;//ft/sec
wshaft=(-U)*(2*U)/32.174;//ft*lb/lbm
disp("Ft*lb/lbm",wshaft,"The shaft energy per unit mass of air=")