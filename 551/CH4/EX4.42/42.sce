clc
p1=7.5*10^5; //N/m^2
C1=140; //m/s
h1=950*10^3; //J/kg
p2=2*10^5; //N/m^2
C2=280; //m/s
h2=650*10^3; //J/kg
m=5; //kg/s
W=(h1-h2)+(C1^2-C2^2)/2
Power=m*W/1000;
disp("Power capacity of turbine = ")
disp(Power)
disp("kW")