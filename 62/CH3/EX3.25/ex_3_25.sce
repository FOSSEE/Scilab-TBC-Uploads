syms t s
X=laplace(1)
Y=laplace(2*%e^(-3*t))
H=Y/X;
disp(H,"H(s)=")
s=%s;
h=2*s/(s+3);
hp=pfss(h);
h1=ilaplace(hp(1));
disp(h1*'u(t)'+'2*delta(t)',"h(t)=")
//part b)
X=laplace(%e^-t)
Y=X*H;
y=ilaplace(Y);
disp(y*'u(t)',"y(t)=")