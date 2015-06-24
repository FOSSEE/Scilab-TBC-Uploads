clc
m=0.1; //kg/s
p1=1; //bar
T4=285; //K
p2=4; //bar
cp=1; //kJ/kg K
y=1.4;

T3=T4*(p2/p1)^((y-1)/y);
disp("Temperature at turbine inlet =")
disp(T3)
disp("K")

P=m*cp*(T3-T4);
disp("Power developed =")
disp(P)
disp("kW")