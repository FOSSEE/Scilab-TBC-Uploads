clc
m=0.5; //kg/s
C1=6; //m/s
C2=5; //m/s
p1=1; //bar
p2=7; //bar
v1=0.85; //m^3/kg
v2=0.16; //m^3/kg
du=90; //kJ/kg
Q=-120; //kJ/kg


disp("(i) Power required to drive the compressor")
W=-du+(C1^2-C2^2)/2/1000 + (p1*v1 - p2*v2)*10^2 + Q;
Power=m*W; 
disp("Power=")
disp(-Power)
disp("kW")


disp("(ii) Inlet and outlet pipe cross-sectional areas")
A1=m*v1/C1;
A2=m*v2/C2;
disp("Inlet crosssectional area = ")
disp(A1)
disp("m^2")

disp("Outlet crossectional area=")
disp(A2)
disp("m^2")