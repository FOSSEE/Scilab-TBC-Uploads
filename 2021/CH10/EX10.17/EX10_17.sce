//Finding of Critical depth,velocity,Minimum Specific energy
//Given
Q=18;
B=6;
q=Q/B;
g=9.81;
//To Find
y=(q^2/g)^(1/3);
v=q/y;
E=(3/2)*y;
disp(" Critical depth ="+string(y)+" meter");
disp(" Critical velocity ="+string(v)+" meter");
disp(" Minimum Specific Energy ="+string(E)+" meter");
