clc
C1=12; //m/s
p1=1*10^5; //N/m^2
v1=0.5; //m^3/kg
C2=90; //m/s
p2=8*10^5; //N/m^2
v2=0.14; //m^3/kg
dh=150; //kJ/kg
Q=-11.67; //kJ/s
m=0.2; //kg/s

disp("(i) Motor power required to drive the compressor")
W=m*[-dh + (C1^2-C2^2)/2/1000] +Q;
disp("Power=")
disp(-W)
disp("kW")


disp("(ii)Ratio of inlet to outlet pipi diameter")
ratio=sqrt(C2/C1*v1/v2);
disp("ratio=")
disp(ratio)