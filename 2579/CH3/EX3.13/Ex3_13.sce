//Ex:3.13
clc;
clear;
close;
// D=4*%pi*E(x,y)max/(double integration of (f(x,y)*sin(x)) with limit from 0 to 2*pi & other from 0 to pi)
// E(x)=Eo*(sin(n*si/2))/sin(si/2)=E(x)=(sin(2*si/2))/sin(si/2)=E(x)=(sin(si))/sin(si/2),    for=Eo=1, n=2
// E(x)=2*cos(si/2)
// (E(x))^2=2*(1+cos(si))
// si=Bd*cos(x)+a, and a=-Bd
// then,  si=Bd*cos(x)-Bd
A=2*(1+cos(0));// the value of (E(x))^2max
// Now on putting the value of (E(x))^2max and (E(x))^2, we get
// D=4*pi*4/(2*pi)*integrate('2(1+cos(y)*sin(x))','x',0,pi)
// then D=4*pi*4/(integrate('(1+cos(y)*sin(x))','x',0,pi))
// D=4*pi*4/(integrate('(1+cos(y)*sin(x))','x',0,pi))
// D=4*pi*4/(integrate('sin(x)+cos(y)*sin(x)','x',0,pi))
// On solving this, we get, D=4*pi*4/(2*pi(2+2.sin(Bd)/Bd))=4/2*(1+sin(Bd)/Bd)
// and finally, D=2/(1+sin(Bd)/Bd)
printf("The directivity for a broadeside array, D=2/(1+sin(Bd)/Bd)");