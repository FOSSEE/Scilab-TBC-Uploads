//Finding of discharge through trapezoidal channel
//Given
B=6;
z=1/3;
C=60;
y=3;
sb=1/5000;
//To Find
A=(B+z*y)*y;
P=B+(2*y*sqrt(1+z^2));
R=A/P;
q=A*C*sqrt(R*sb);
disp("Discharge through Trapezoidal channel ="+string(q)+" m^3/sec");
