clc
//Initialization of variables
t=[0 1000 2000 3000 4000]
p=[10.20 5.72 3.99 2.78 1.94]
lnp=log(p)
x=t
y=lnp
//hence the value differs from textbook a bit.
sx=sum(x);sx2=sum(x^2);sy=sum(y);sxy=sum(x.*y);n=length(x);
A=[sx,n;sx2,sx];B=[sy;sxy];p=A\B;
m=p(1,1);b=p(2,1);
k=m
plot(x,y)
//Since first order reaction
//results
printf("rate constant = %.2e s^-1",k)
