//Finding of velocity of flow and discharge
//Given
c=50;
sb=1/3000;
R=10/9;
a=10;
//To Find
b=R*sb;
v=c*sqrt(b);
q=a*v;
disp("Velocity of flow ="+string(v)+" m/sec");
disp("Discharge ="+string(q)+" m^3/sec");
