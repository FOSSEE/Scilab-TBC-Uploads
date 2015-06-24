//Ex:3.15
clc;
clear;
close;
dB=40;
n=8;// five element array
r1=10^(dB/20);// because dB=20log(r1)
r=floor(r1);
// Tchebyscheff polynomial of degree (n-1)=8-1=4
// T7(xo)=r
// 64xo^7-112xo^5+56xo^3-7xo=r
// then using ulternate formula, we get the value of xo
m=7;// degree of the equation
a=sqrt(r^2-1);
A=(r+a)^(1/m);
B=(r-a)^(1/m);
xo1=.5*(A+B);
xo=1.3244;// approx. value of xo1
// Thus Et, i.e., E8 from the equation
// E8=aoz+a1(4z^3-3z)+a^2(16z^5-20z^3+5z)+a^3(64z^7-112z^5+56z^3-7z)=64x^7-112x^5+56x^3-7x, where z=(x/xo)
// Then on putting z=(x/xo), we get
// ao(x/xo)+a1(4(x/xo)^3-3(x/xo))+a^2(16(x/xo)^5-20(x/xo)^3+5(x/xo))+a^3(64(x/xo)^7-112(x/xo)^5+56(x/xo)^3-7(x/xo))=64x^7-112x^5+56x^3-7x
// Now equating terms, we have
a3=xo^7;
a2=7*a3-7*xo^5;
a1=14*xo^3+5*a2-14*a3;
ao=-7*xo+3*a1-5*a2+7*a3;
a33=a3/a3;// the ratio of the a3 to a3
a23=a2/a3;// the ratio of the a2 to a3
a13=a1/a3;// the ratio of the a1 to a3
ao3=ao/a3;// the ratio of the ao to a3
R=r/sqrt(2);
// Y=acos(R/sqrt(2))= log(R+sqrt(R^2-1))
Y=(1/7)*log(R+sqrt(R^2-1))/log(10);
// cosh(Y/4)=cosh(1.19/4)=cosh(0.2975)
// because cosh(x)= 1+(x^2/2)+(x^4/24)+.....
// cosh(0.3072)=1+(0.3072^2/2)+(0.3072^4/24)
K=1+(0.3072^2/2)+(0.3072^4/24);
// HPBW= 2*asin((y/180*d)*acos(1/x0*cosh(Y/4)))
// HPBW= 2*asin((y*4/180*3y)*acos(1/x0*cosh(0.3072)))
// HPBW= 2*asin((4/3*180)*acos(1/x0*K))
HPBW=2*(asin((4/540)*(acos(K/xo))*(180/%pi)))*180/%pi;// half power bandwidth in degree
printf("The value of the parameter r= %d", r);
printf("\n The value of the parameter xo= %f", xo);
printf("\n The value of the current amplitude parameter ao= %f", ao);
printf("\n The value of the current amplitude parameter a1= %f", a1);
printf("\n The value of the current amplitude parameter a2= %f", a2);
printf("\n The value of the current amplitude parameter a3= %f", a3);
printf("\n The value of the relative amplitude parameter a33= %f", a33);
printf("\n The value of the relative amplitude parameter a23= %f", a23);
printf("\n The value of the relative amplitude parameter a13= %f", a13);
printf("\n The value of the relative amplitude parameter ao3= %f", ao3);
printf("\n The half power bandwidth= %f degree", HPBW);
printf("\n The five element array is shown in figure in the given textbook")