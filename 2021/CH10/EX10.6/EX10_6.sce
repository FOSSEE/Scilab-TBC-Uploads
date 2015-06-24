//Finding of discharge through triangular channel
//Given
y=4;
theta=60;
b=theta/2;
n=0.0182;
sb=1/1000;
T=2*tan(b)*y;z=tan(b); disp(z);
A=0.5*T*y;
P=2*sqrt(y^2+(y*tan(b))^2);
R=A/P;disp(A);disp(P);disp(R);
//To Find
q=A*(1/n)*(R)^2/3*(sb)^1/2;
disp("discharge through triangular channel ="+string(q)+" m^3/sec");
