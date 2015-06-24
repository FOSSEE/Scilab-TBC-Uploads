//Finding of Bed slope of Trapezoidal channel
//Given
B=6;
y=3;
z=3/4;
q=30;
A=(B+(z*y))*y;
P=B+(2*y)*sqrt(1+z^2);
R=(A/P);
n=0.0158;
//To Find
sb=((q^2)*n^2)/((A^2)*(R^(4/3)));
disp("Bed slope of Trapezoidal channel ="+string(sb)+" no units");
