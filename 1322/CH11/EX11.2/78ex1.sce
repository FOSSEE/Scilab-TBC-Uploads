
clear;
clc;
close;
//let a-the avg. amount paid. x-no. of customers.  b-the expenses
//net profit is y=ax-b
x=320;y=4.50;
x=250;y=1.00;
//substitute in above equation
//4.5=320*a-b-equ.1;1=250*a-b-equ.2.subbstract equ.2 from 1.
a=0.05;//we get
b=250*a-1;
x=poly(0,'x');
y=a*x-b;//equation to straight line
//if there is no profit i.e., y=0
for x=1:500
if(0.05*x-11.5==0)
mprintf("x=%i \n",x) 
break
end
end
clf;
cust=[230 240 270 300 350 380];
profit=[0 0.5 2.0 3.5 6.0 7.5];
plot(cust,profit,6);
plot(230,0,'r->.diam');
//profit(y) depends on varying no. of customers(x). the no.'s 0.05 & 11.5 remained constant
xtitle("the straight line graph","no. of customers","profit");
legend("y=0.05*x-11.5");
xgrid();
