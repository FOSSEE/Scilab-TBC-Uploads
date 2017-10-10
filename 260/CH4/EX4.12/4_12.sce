//Eg-4.12
//pg-165

clear
clc

deff('[z]=f0(x0,x1)','z=x0^3-2.5*x1^2+4*x0-3.7');
deff('[z]=f1(x0,x1)','z=0.7*x1^2+3*x1-1.8*x0+1');

x0=0;
x1=0;

eps=10^-10;

deff('[z]=df0(x0)','z=3*x0^2+4');
deff('[z]=df1(x1)','z=-5*x1');
deff('[z]=fd0(x0)','z=-1.8');
deff('[z]=fd1(x1)','z=1.4*x1+3');
for i=1:5
Xold=[x0;x1];
A=[feval(x0,df0) feval(x1,df1);feval(x0,fd0) feval(x1,fd1)];
b=-[feval(x0,x1,f0);feval(x0,x1,f1)];
Xnew=Xold+inv(A)*b;
x0=Xnew(1);
x1=Xnew(2);
end

disp(Xnew)