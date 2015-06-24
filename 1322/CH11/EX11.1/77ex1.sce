
clear;
clc;
close;
//x-no. of customers.  b-the expenses
clf;
cust=[230 240 270 300 350 380];
profit=[0 0.5 2.0 3.5 6.0 7.5];
plot(cust,profit,6);
plot(230,0,'r->.diam');
//profit(y) depends on varying no. of customers(x). 
xtitle("the straight line graph","no. of customers","profit");
xgrid();
//ex(1)
mprintf("(1) From graph, if x=230, then y=0");
//ex(2)
mprintf("(2) if no. of customers is <230 then there will be a loss")
