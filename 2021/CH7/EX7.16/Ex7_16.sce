//Finding of Maximum rise of water level,velocity,Time of occurance
//Given
d=4;
d1=1;
l=150;
q=2;
g=9.81;
//To Find
a1=(%pi/4)*d^2;
a2=(%pi/4)*d1^2;
v=q/a2;
a=(l*a2)/(g*a1);
b=sqrt(a);
h=v*b;
c=(l*a1)/(g*a2);
d=sqrt(c);
t=(%pi/2)*d;
v1=v*(a2/a1);
disp("Maximum rise of water ="+string(h)+" meter");
disp("Time taken ="+string(t)+" seconds");
disp("Maximum Velocity ="+string(v1)+" m/sec");
