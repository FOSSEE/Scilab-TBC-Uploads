clc;
clear all;
disp("Heat transfer coefficient")
L=2/100;//m thickness of slab
qg=7*10^(6);// W/m^3
k=26;// W/(m*C)
tmax=180;// degree C
ta=30;//degree C

//tmax=qg*(L/(2*h)+L*L/(8*k))+ta
delT=tmax-ta;
X=delT/qg;
Y=X-L*L/(8*k);
Z=L/(2*Y);
h=Z;
disp("W/(m^2*C)",h,"heat transfer coefficient h = ")
