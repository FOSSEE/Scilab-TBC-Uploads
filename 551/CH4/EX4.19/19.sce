clc
m=1; //kg
du=-42000; //J
cp=840; //J/kg.0C
cv=600; //J/kg.0C
dT=du/m/cv;
Q=m*cp*dT;
W=(Q-du)/10^3;
disp("Work done=")
disp(W)
disp("kJ")