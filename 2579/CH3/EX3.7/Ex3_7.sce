//Ex:3.7
clc;
clear;
close;
dB=21;
n=5;// five element array
r1=10^(dB/20);// because dB=20log(r1)
r=floor(r1);
// Tchebyscheff polynomial of degree (n-1)=5-1=4
// T4(xo)=r
// 8xo^4-8xo^2+1=20
// then using ulternate formula, we get the value of xo
m=4;// degree of the equation
a=sqrt(r^2-1);
A=(r+a)^(1/m);
B=(r-a)^(1/m);
xo1=.5*(A+B);
xo=1.3132;// approx. value of xo1 is 1.3132 because xo1=1.313295
// Thus Et, i.e., E5 from the equation
// E5=aoz+a1(2z^2-1)+a2(8z^4-8z^2+1), where z=(x/xo)
// E5=T4(xo)
// ao(x/xo)+a1(2(x/xo)^2-1)+a2(8(x/xo)^4-8(x/xo)^2+1)=8x^4-8x^2+1
// Now equating terms, we have
// a2(x/xo)^4=x^4
a2=xo^4;
// a1*2(x/xo)^2-8(x/xo)^2*a2=-8x^2
// a1-4a2=-4x^2
a1=4*a2-4*xo^2
// ao-a1+a2=1
ao=a1-a2+1;
a22=a2/a2;// the ratio of the a2 to a2
a12=a1/a2;// the ratio of the a1 to a2
ao2=2*ao/a2;// the ratio of the 2ao to a2
R=r/sqrt(2);
// Y=acos(R/sqrt(2))= log(R+sqrt(R^2-1))
Y=log(R+sqrt(R^2-1))/log(10);
// cosh(Y/4)=cosh(1.19/4)=cosh(0.2975)
// because cosh(x)= 1+(x^2/2)+(x^4/24)+.....
// cosh(0.2975)=1+(0.2975^2/2)+(0.2975^4/24)
A=1+(0.2975^2/2)+(0.2975^4/24);
// HPBW= 2*asin((y/180*d)*acos(1/x0*cosh(Y/4)))
// HPBW= 2*asin((y*2/180*y)*acos(1/x0*cosh(0.2975)))
// HPBW= 2*asin((2/180)*acos(1/x0*A))
HPBW=2*(asin((2/180)*(acos(A/xo))*(180/%pi)))*180/%pi;// half power bandwidth in degree
printf("The value of the parameter r= %d", r);
printf("\n The value of the parameter xo= %f", xo);
printf("\n The value of the current amplitude parameter ao= %f", ao);
printf("\n The value of the current amplitude parameter a1= %f", a1);
printf("\n The value of the current amplitude parameter a2= %f", a2);
printf("\n The value of the relative amplitude parameter a22= %f", a22);
printf("\n The value of the relative amplitude parameter a12= %f", a12);
printf("\n The value of the relative amplitude parameter ao2= %f", ao2);
printf("\n The half power bandwidth= %f degree", HPBW);
printf("\n The five element array is shown in figure in the given textbook")