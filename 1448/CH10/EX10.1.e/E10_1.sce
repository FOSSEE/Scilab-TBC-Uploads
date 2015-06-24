clc
//Initialization of variables
I=[1 2 4 6]*10^-5
r1=[1.070 3.48 13.9 31.3]*10^-3
r2=[4.35 17.4 69.6 157]*10^-3
r3=[10.69 34.7 138 313]*10^-3
Ar=[1 5 10]*10^-3
//calculations
logI=log(I)
logr1=log(r1)
logr2=log(r2)
logr3=log(r3)
//The calculations are approximate.hence the value differs from textbook a bit.
x=logI
y=logr1
sx=sum(x);sx2=sum(x^2);sy=sum(y);sxy=sum(x.*y);n=length(x);
A=[sx,n;sx2,sx];B=[sy;sxy];p=A\B;
m1=p(1,1);b1=p(2,1);
y=logr2
sx=sum(x);sx2=sum(x^2);sy=sum(y);sxy=sum(x.*y);n=length(x);
A=[sx,n;sx2,sx];B=[sy;sxy];p=A\B;
m2=p(1,1);b2=p(2,1);
y=logr3
sx=sum(x);sx2=sum(x^2);sy=sum(y);sxy=sum(x.*y);n=length(x);
A=[sx,n;sx2,sx];B=[sy;sxy];p=A\B;
m3=p(1,1);b3=p(2,1);
logAr=log(Ar)
kdash=[b1 b2 b3]
plot(logAr,kdash)
x=logAr
y=kdash
sx=sum(x);sx2=sum(x^2);sy=sum(y);sxy=sum(x.*y);n=length(x);
A=[sx,n;sx2,sx];B=[sy;sxy];p=A\B;
m4=p(1,1);b4=p(2,1);
logk=b4
k=%e^logk
//results
printf("Overall rate law is r = %.1e [I]^2 [Ar]",k)
