//Ex:3.14
clc;
clear;
close;
xnp=45;// beam width in degree
xnp1=(xnp/2)*(%pi/180);// half beam width in degree
// T(n-1)(x)=0 or T(8-1)(x)=0, or T(7)(x)=0
// cos((m-1)*acos(x))=0
// (8-1)*acos(x)=cos(2k-1)*(%pi/2)
// acos(x)=(2k-1)*pi/14
// for  first nulls , k=1
// acos(x)=pi/14;
x=cos(%pi/14);
// but z=x/xo=cos(p/2)
// p=Bd*sin(xnp1)
// p/2=Bd*sin(xnp1)/2
// x/xo=cos(Bd*sin(xnp1)/2)
// and Bd*sin(a)=(2*%pi/y)*(y/2)*(1/2)*sin(xnp1)
// and Bd*sin(xnp1)=90*sin(xnp1)
xo=x/(cos((90*sin(xnp1)*(%pi/180))));
// aoz+a1(4z^3-3z)+a^2(16z^5-20z^3+5z)+a^3(64z^7-112z^5+56z^3-7z)=64x^7-112x^5+56x^3-7x, where z=(x/xo)
// Then on putting z=(x/xo), we get
// ao(x/xo)+a1(4(x/xo)^3-3(x/xo))+a^2(16(x/xo)^5-20(x/xo)^3+5(x/xo))+a^3(64(x/xo)^7-112(x/xo)^5+56(x/xo)^3-7(x/xo))=64x^7-112x^5+56x^3-7x
// on comparing the terms, we get ao=12.3858,a1=10.0506,a2=6.4106,a3=3.223
ao=12.3858; 
a1=10.0506;
a2=6.4106;
a3=3.223;
a33=a3/a3;// the ratio of the a3 to a3
a23=a2/a3;// the ratio of the a2 to a3
a13=a1/a3;// the ratio of the a1 to a3
ao3=ao/a3;// the ratio of the ao to a3
printf("The value of the parameter xo = %f", xo);
printf("\n The value of the current amplitude parameter ao= %f", ao);
printf("\n The value of the current amplitude parameter a1= %f", a1);
printf("\n The value of the current amplitude parameter a2= %f", a2);
printf("\n The value of the current amplitude parameter a2= %f", a3);
printf("\n The value of the relative amplitude parameter a33= %f", a33);
printf("\n The value of the relative amplitude parameter a23= %f", a23);
printf("\n The value of the relative amplitude parameter a13= %f", a13);
printf("\n The value of the relative amplitude parameter ao3= %f", ao3);
printf("\n The five element array is shown in figure in the given textbook")