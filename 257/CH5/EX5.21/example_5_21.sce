s=%s;
syms t s;

F=(1- (3*%e^(-2*t)) + (2*%e^(-3*t))  );
y=laplace(F,t,s);

G=1
x=laplace(G,t,s);

disp((y/x),"closed loop transfer function is")

T=y/x;

disp((T/(1-T)) , "openloop transfer function is")