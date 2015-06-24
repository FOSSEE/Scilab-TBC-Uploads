//Ex:3.8
clc;
clear;
close;
m=5;// number of elements
xn=45/2;// mean beamwidth in degree
xn1=xn*%pi/180;// mean beamwidth in radian
x=cos((180/(2*(m-1)))*(%pi/180));
a=sin(xn1);
p=cos(90*a*(%pi/180));
xo=x/p;
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
printf("The value of the parameter xo = %f um", xo);
printf("\n The value of the current amplitude parameter ao= %f", ao);
printf("\n The value of the current amplitude parameter a1= %f", a1);
printf("\n The value of the current amplitude parameter a2= %f", a2);
printf("\n The value of the relative amplitude parameter a22= %f", a22);
printf("\n The value of the relative amplitude parameter a12= %f", a12);
printf("\n The value of the relative amplitude parameter ao2= %f", ao2);
printf("\n The five element array is shown in figure in the given textbook")