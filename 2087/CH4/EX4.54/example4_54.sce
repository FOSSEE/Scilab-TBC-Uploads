

//example 4.54
//calculate Total rainfall in catchment
//run-off by rainfall of 3.3cm in 3hrs
clc;funcprot(0);
//given
A=[36 18 66];             //area of catchment
fi=[0.9 1.1 0.5];         //fi index
r1=[0.6 0.9 1.0];         //rainfall in first hour
r2=[2.4 2.1 2.0];        //rainfall in second hour
r3=[1.3 1.5 0.9];        //rainfall in third hour

t36=r1(1)+r2(1)+r3(1);
t18=r1(2)+r2(2)+r3(2);
t66=r1(3)+r2(3)+r3(3);

p=(t36*A(1)+t18*A(2)+t66*A(3))/(A(1)+A(2)+A(3));
mprintf("Total rainfall in catchment=%f cm.",p);

ro1=[0 0 0.5];ro2=[1.5 1.0 1.5];ro3=[0.4 0.4 0.4];    //rainfall-fi
t1=ro1(1)+ro2(1)+ro3(1);
t2=ro1(2)+ro2(2)+ro3(2);
t3=ro1(3)+ro2(3)+ro3(3);
run=(A(1)*t1+A(2)*t2+A(3)*t3)/(A(1)+A(2)+A(3));       //run-off from entire catchment
mprintf("\nrun-off by rainfall of 3.3cm in 3hrs=%f cm.",run);
fia=(fi(1)*A(1)+fi(2)*A(2)+fi(3)*A(3))/(A(1)+A(2)+A(3));
tr=(1.1-fia)*3;
mprintf("\nTotal run-off=%f cm.",tr);
