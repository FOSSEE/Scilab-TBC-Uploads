// Euler's Methods
clc;
clear;
close();
format('v',8);
funcprot(0);
disp('Integral 0 to 2 exp(x)dx');
deff('[ud]=f(u,v)','ud=u^2-2*u*v');
deff('[vd]=g(x,u,v)','vd=u*x+u^2*sin(v)');
un = 1;
vn = -1;
xn = 0;
h = 0.05;
for i = 1:2
    un_1 = un + h*(f(un,vn));
    disp(un_1);
    vn_1 = vn + h*(g(xn,un,vn));
    disp(vn_1);
    vn = vn_1;
    un = un_1;
    xn = xn + h; 
end
ann = [un vn];
disp(ann,'Calculated U2 n V2 values : ');