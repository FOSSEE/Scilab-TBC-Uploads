z = %z;
syms n z1;//To find out Inverse z transform z must be linear z = z1
X  =z*.5/((z-(1/2))*(z-1))
X1 = denom(X);
zp = roots(X1);
X1 = z1*.5/((z1-(1/2))*(z1-1))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
x1 = limit(F1,z1,zp(1));
disp(x1,'x1[n]=')
x2 = limit(F2,z1,zp(2));
disp(x2,'x2[n]=')
x = x1+x2;
disp(x,'x[n]=')
//a) when |z|<.5
n=-10:0;
disp(-x*'u(-n-1)',"when |z|<1/2 x[n]=")
xn=-(1-2^-n);
mprintf('x[n]={....,%.2f,%.2f,%.2f,0}',xn($-3),xn($-2),xn($-1));
//b) when |z|>1
n=0:10;
disp(x*'u(n)',"when |z|>1 x[n]=")
xn=(1-2^-n);
mprintf('x[n]={%.2f,%.2f,%.2f...}',xn(1),xn(2),xn(3));