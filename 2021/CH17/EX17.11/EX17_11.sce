//Finding of Propelling Force,Work Done ,Efficiency
//Given
Cv=0.97;
g=9.81;
H=6;
rho=1000;
u=4;
d=0.15;
//To Find
V=Cv*sqrt(2*g*H);
A=(%pi/4)*d^2;
P=rho*A*(V+u)*V;
W=P*u;
E=(2*u*V)/(u+V)^2;
E1=E*100;
disp("Propelling Force ="+string(P)+" Newtons");
disp("Work Done ="+string(W)+" N-m");
disp("Efficiency ="+string(E1)+" Percentage");
