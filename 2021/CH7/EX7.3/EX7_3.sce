//Finding of Discharge
//Given
d=0.3;
l=400;
f=0.00225;
h=5;
g=9.81;
//To Find
x=(h*2*g*d)/(f*l);
v=sqrt(x);
disp(v);
A=(%pi/4)*d^2;
q=A*v;disp(A);
disp(" Discharge ="+string(q)+" m^3/sec");
