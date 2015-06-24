//Finding of discharge through Trapezoidal Notch
//Given
H=0.3;
Cd1=0.62;
Cd2=0.6;
d=0.4;
w1=1.2;
w2=0.5;
h=0.4;
g=9.81;
//To Find
theta=((w1-w2)/2)/h;disp(theta);
q1=((2/3)*Cd1*sqrt(2*g)*H^(3/2));
q2=((8/15)*Cd2*sqrt(2*g)*theta*H^(5/2));
q=q1+q2;disp(q1);disp(q2);
disp("discharge through Trapezoidal Notch ="+string(q)+" m^3/sec");
