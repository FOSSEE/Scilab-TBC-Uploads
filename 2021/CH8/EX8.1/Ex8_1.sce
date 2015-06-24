//Finding of Actual Discharge,velocity
//Given
d=0.05;
H=12;
Cd=0.6;
Cv=0.98;
g=9.81;
//To Find
a=(%pi/4)*d^2;
v=sqrt(2*g*H);
q=Cd*a*v;
V=Cv*v;
disp("Actual Discharge ="+string(q)+" m^3/sec");
disp("Actual Velocity ="+string(V)+" m/sec");
