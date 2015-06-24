clear;
clc;
format('v',6);
Zo=100, Zl=40+30*%i;
Yo=1/Zo;
yl=Zo/Zl;
ys1=1.04*%i, ys2=-1.04*%i; //By smith chart
Ys1=Yo*ys1, Ys2=Yo*ys2;
disp([Ys1*1000 Ys2*1000],'Possible values of sub admittance in mS =');
la=.5 - (62-(-39))/720 ;disp(la, 'distance between load and antenna at A devided by Lamda');
lb= (62-39)/720;disp(lb, 'distance between load and antenna at B devided by Lamda');//With the help of figure
da=88/720, db= 272/720;
format('v',7);
disp(da,db,'Sub length devided by Lamda');