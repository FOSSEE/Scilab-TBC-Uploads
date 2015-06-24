// Euler's trapezoidal predictor-corrector pair
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
    un_1p = un + h*(f(un,vn));
    disp(un_1p);
    vn_1p = vn + h*(g(xn,un,vn));
    disp(vn_1p);
    un_1c = un + h*(f(un,vn)+f(un_1p,vn_1p))/2;
    disp(un_1c);
    vn_1c = vn + h*(g(xn,un,vn)+g(xn+h,un_1p,vn_1p))/2;
    disp(vn_1c);
    un_1cc = un + h*(f(un,vn)+f(un_1c,vn_1c))/2;
    disp(un_1cc);
    vn_1cc = vn + h*(g(xn,un,vn)+g(xn+h,un_1c,vn_1c))/2;
    disp(vn_1cc);
    vn = vn_1cc;
    un = un_1cc;
    xn = xn + h; 
end
ann = [un vn];
disp(ann,'Calculated U2 n V2 values : ');