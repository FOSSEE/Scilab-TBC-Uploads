clc
//Initialization of variables
nn=0.95
p1=50 //psia
p2=30 //psia
v1=8.515
m=1 //lbm
//calculations
cv=sqrt(nn)
V2rev=1372
V2act=cv*V2rev
n=1.283
v2=v1*(p1/p2)^(1/n)
A=m*v2/V2act *144
D=sqrt(A*4/%pi)
//results
printf("Area = %.2f in^2",A)
printf("\n diameter = %.3f in",D)
