//Finding of velocity , Dischage
//Given
z=1.5;
sb=0.0003;
B=10;
n=0.012;
y=3;
//To Find
A=(B+(z*y))*y;
P=B+(2*y)*sqrt(1+z^2);
R=A/P;
v=(1/n)*R^(2/3)*sb^(1/2);
q=A*v;
disp("Velocity ="+string(v)+" m/sec^2");
disp("Discharge ="+string(q)+" m^3/sec");
