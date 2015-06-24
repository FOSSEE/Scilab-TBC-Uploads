//Ex:3.4
clc;
clear;
close;
dB=26;
n=8;// eight element array
r1=10^(dB/20);// because dB=20log(r)
r=ceil(r1);// round off value of r1
// Tchebyscheff polynomial of degree (n-1)=8-1=7
// T7(xo)=r
// 64Xo^7-112xo^5+56xo^3-7xo=20
// then using ulternate formula, we get the value of xo
m=n-1;// degree of the equation
a=sqrt(r^2-1);
A=(r+a)^(1/m);
B=(r-a)^(1/m);
xo1=.5*(A+B);
xo=1.15;// approx. value of xo1
// eight element array is shown in figure in the given textbook
// Thus Et, i.e., E8 from the equation
// E8=aoz+a1(4z^3-3z)+a2(16z^5-20z^3+5z)+a3(64z^7-112z^5+56z^3-7z)=64x^7-112x^5+56x^3-7x, where z=(x/xo)
// Then on putting z=(x/xo), we get
// ao(x/xo)+a1(4(x/xo)^3-3(x/xo))+a^2(16(x/xo)^5-20(x/xo)^3+5(x/xo))+a^3(64(x/xo)^7-112(x/xo)^5+56(x/xo)^3-7(x/xo))=64x^7-112x^5+56x^3-7x
// Now equating terms, we have
a3=xo^7;
a2=(112*a3-112*xo^5)/16;
a1=14*xo^3+5*a2-14*a3;
ao=3*a1-5*a2+7*a3-7*xo;
// Therefore the relative amplitude of the array are
a33=a3/a3;// the ratio of the a3 to a3
a23=a2/a3;// the ratio of the a2 to a3
a13=a1/a3;// the ratio of the a1 to a3
ao3=ao/a3;// the ratio of the ao to a3
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
printf("\n The five element array is shown in figure in the given textbook")