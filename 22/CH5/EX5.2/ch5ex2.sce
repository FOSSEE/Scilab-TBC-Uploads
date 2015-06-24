//example 5.2 (c)
//Z-transform of sine signal
syms n z;
Wo =%pi/4;
a = (0.33)^n;
x1=%e^(sqrt(-1)*Wo*n);
X1=symsum(a*x1*(z^(-n)),n,0,%inf)
x2=%e^(-sqrt(-1)*Wo*n)
X2=symsum(a*x2*(z^(-n)),n,0,%inf)
X =(1/(2*sqrt(-1)))*(X1+X2)
disp(X,"ans=")

//example 5.2 (a)
//Z-transform of Impulse Sequence
syms n z;
X=symsum(1*(z^(-n)),n,0,0);
disp(X,"ans=")

//example 5.2 (d)
//Z-transform of given Sequence
syms n z;
X=symsum(1*(z^(-n)),n,0,4);
disp(X,"ans=")

//example 5.2 (b)
//Z-transform of unit function Sequence
syms n z;
X=symsum(1*(z^(-n)),n,0,%inf);
disp(X,"ans=")