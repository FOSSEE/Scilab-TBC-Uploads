//Example 5.20
//Laguerre Method
//Page no. 180
clc;clear;close;
deff('y=f(x)','y=x^3+x^2+10*x-20')
deff('y=f1(x)','y=3*x^2+2*x+10')
deff('y=f2(x)','y=6*x+2')
n=3;
printf('i\tn\txi\t\tP(x)\t\tP1(x)\t\tP2(x)\t\tProot\t\tNroot\n')
printf('---------------------------------------------------------------------------------------------------------\n')
xi=1
for i=0:9
    Proot=xi-(n*f(xi))/(f1(xi)+sqrt((n-1)*f1(xi)^2-n*f(xi)*f2(xi)))
    Nroot=xi-(n*f(xi))/(f1(xi)-sqrt((n-1)*f1(xi)^2-n*f(xi)*f2(xi)))
    printf(' %i\t%i\t%f\t%f\t%f\t%f\t%f\t%f\n',i,n,xi,f(xi),f1(xi),f2(xi),Proot,Nroot)
    xi=Proot
end
printf('\n\nProot = %f\n\nNroot = %f',Proot,Nroot)