//ques39
clc
disp('Angle of intersection');
disp('point of intersection of r=sint+cost and r=2sint is t=pi/4 ');
disp('tanu=dQ/dr*r');
syms Q ;

r1=2*sin(Q);
r2=sin(Q)+cos(Q);
u=atan(r1*diff(r2,Q,1));
Q=%pi/4;
u=eval(u);
disp('The angle at point of intersection in radians is : ');
disp(u);
