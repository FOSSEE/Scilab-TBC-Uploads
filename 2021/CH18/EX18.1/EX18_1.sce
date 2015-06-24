//Finding of Power delivered , Efficiency
//Given
u=35;
Q=1;
theta=10; 
H=270;
Cv=0.98;
g=9.81;
rho=1000;
//To Find
V=Cv*sqrt(2*g*H);
Vr=V-u;
Vw1=Vr*cos(%pi/18)-u;
W=rho*(Q*(V+Vw1)*u);
P=W/1000;
E=(2*(V+Vw1)*u)/V^2;
E1=E*100;
disp("Power delivered ="+string(P)+" Kilo watts");
disp("Hydraulic Efficiency ="+string(E1)+" percentage");
