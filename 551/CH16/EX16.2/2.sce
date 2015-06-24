clc
p1=35; //kN/m^2
V1=30; //m/s
T1=423; //K
V2=150; //m/s
R=290; //J/kg K
y=1.4;

//Let r1=p2/p1
r1=R*T1; 

p2=p1*(1-((V2^2/2-V1^2/2)*(y-1)/y/r1))^(y/(y-1));
disp("p2=")
disp(p2)
disp("kN/m^2")

T2=T1*(p2/p1)^((y-1)/y);
t2=T2-273;
disp("t2 =")
disp(t2)
disp("°C")