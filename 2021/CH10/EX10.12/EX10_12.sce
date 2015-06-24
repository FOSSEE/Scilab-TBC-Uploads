//Finding of C and f
//Given
n=0.012;
d=0.5;
w=2;
g=9.81;
//To Find
A=w*d;
P=2+(w*d);
R=P/A;
C=(1/n)*(R)^(1/6);
f=sqrt((8*g)/(C^2));
disp(" C="+string(C)+" m/sec");
disp("f ="+string(f)+" no units");
