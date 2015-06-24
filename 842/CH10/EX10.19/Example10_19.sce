//clear//
//Example10.19:Z Transform : Initial Value Theorem
z = %z;
syms n z1;//To find out Inverse z transform z must be linear z = z1
X  =z*(z-(3/2))/((z-(1/3))*(z-(1/2)))
X1 = denom(X);
zp = roots(X1);
X1 = z1*(z1-(3/2))/((z1-(1/3))*(z1-(1/2)))
F1 = X1*(z1^(n-1))*(z1-zp(1));
F2 = X1*(z1^(n-1))*(z1-zp(2));
x1 = limit(F1,z1,zp(1));
x2 = limit(F2,z1,zp(2));
x = x1+x2;
disp(x,'x[n]=')
x_initial = limit(x,n,0);
disp(x_initial,'x[0]=')
////Result
//x[n]= 7/3^n-3*2^(1-n)  
//x[0]= 1; Initial Value
