//laplace//
syms t s;
disp(%e^(-3*t),"g(t)=");
y1=laplace('%e^(-3*t)',t,s);
disp(y1,"G(s)=")
disp(%e^(-4*t),"r(t)=");
y2=laplace('%e^(-4*t)',t,s);
disp(y2,"R(s)=")
disp(y1*y2,"G(s)R(s)=")
