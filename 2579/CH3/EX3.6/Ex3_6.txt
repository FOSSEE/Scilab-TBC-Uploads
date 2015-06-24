//Ex:3.6
clc;
clear;
close;
dB=18;
n=4;// five element array
r1=10^(dB/20);// because dB=20log(r1)
r=ceil(r1);
// Tchebyscheff polynomial of degree (n-1)=4-1=4
// T3(xo)=r
// 4xo^3-3xo=8
// then using ulternate formula, we get the value of xo
m=3;// degree of the equation
a=sqrt(r^2-1);
A=(r+a)^(1/m);
B=(r-a)^(1/m);
xo1=.5*(A+B);
xo=1.46;// approx. value of xo1 is 1.46 because xo1=1.456957
// four element array is shown in figure in the given textbook
// Thus Et, i.e., E4 from the equation
// E4=aoz+a1(4z^3-3z), where z=(x/xo)
// E4=T3(xo)
// ao(x/xo)+a1(4(x/xo)^3-3(x/xo))=4x^3-3x
// Now equating terms, we have
// 4a1(x/xo)=4x^3
a1=xo^3;
// ao-3a1=-3a1
ao=3*a1-3*xo;
// Therefore the relative amplitude of the array are
a11=a1/a1;// the ratio of the a1 to a1
ao1=ao/a1;// the ratio of the ao to a1
printf("The value of the parameter r= %d", r);
printf("\n The value of the parameter xo= %f", xo);
printf("\n The value of the current amplitude parameter ao= %f", ao);
printf("\n The value of the current amplitude parameter a1= %f", a1);
printf("\n The value of the relative amplitude parameter a11= %f", a11);
printf("\n The value of the relative amplitude parameter ao1= %f", ao1);
printf("\n The five element array is shown in figure in the given textbook")