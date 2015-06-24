//Ex:3.5
clc;
clear;
close;
dB=20;
n=5;// five element array
r=10^(dB/20);// because dB=20log(r)
// Tchebyscheff polynomial of degree (n-1)=5-1=4
// T4(xo)=r
// 8xo^4-8xo^2+1=10
// then using ulternate formula, we get the value of xo
m=4;// degree of the equation
a=sqrt(r^2-1);
A=(r+a)^(1/m);
B=(r-a)^(1/m);
xo=.5*(A+B);
// five element array is shown in figure in the given textbook
// Thus Et, i.e., E5 from the equation
// E5=aoz+a1(2z^2-1)+a2(8z^4-8z^2+1), where z=(x/xo)
// E5=T4(xo)
// ao(x/xo)+a1(2(x/xo)^2-1)+a2(8(x/xo)^4-8(x/xo)^2+1)=8x^4-8x^2+1
// Now equating terms, we have
// a2(x/xo)^4=x^4
a2=xo^4;
// a1*2(x/xo)^2-a2*8(x/xo)^2=-8x^2
a1=4*a2-4*xo^2;
// ao-a1+a2=1
ao=1+a1-a2;
// Therefore the relative amplitude of the array are
a11=a1/a1;// the ratio of the a1 to a1
a12=a1/a2;// the ratio of the a1 to a2
a02=2*ao/a2;// the ratio of the 2ao to a2
printf("The value of the parameter r= %d", r);
printf("\n The value of the parameter xo= %f", xo);
printf("\n The value of the current amplitude parameter 2*ao= %f", 2*ao);
printf("\n The value of the current amplitude parameter a1= %f", a1);
printf("\n The value of the current amplitude parameter a2= %f", a2);
printf("\n The value of the relative amplitude parameter a11= %f", a11);
printf("\n The value of the relative amplitude parameter a12= %f", a12);
printf("\n The value of the relative amplitude parameter a02= %f", a02);
printf("\n The five element array is shown in figure in the given textbook")