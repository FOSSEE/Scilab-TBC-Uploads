
//voltmeters example
clc;
clear;
close;
clf();
C=[1.9 2.75 3.8 4.8 5.8];
K=[5.75 8.3 11.2 14 16.8];
//C and K are connected by the law of the form K=mC+b
plot2d4(C,K,3);
plot(3.4,10,'r.pentagram');
plot(5.3,15.5,'r.pentagram');
xtitle("voltmeters graph","C","K");
xgrid();
legend("K=mC+b","POINTS A,B",2);
//substituting A,B points in K=mC+b,we get
//10=3.4m+b ------->equ(1) ; 15.5=5.3m+b ------->equ(2)
//substracting
m=(10-15.5)/(3.4-5.3);
b=10-(3.4*m);
mprintf("the law is: \n K=%fC+%f",m,b)
