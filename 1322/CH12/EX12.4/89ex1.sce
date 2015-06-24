
//Given: For model A, material(m) cost(c)=4$,labour(l) 5$,profit(p) 5$.For model B, m=3$, l=9$,p=6$.Altogether 240$ for m and 450$ for l. 
clc;
clear;
clf();
//let a is number of model A and b for model B to be made
//constraints on m & l as pair of ineqalities 4a+3b<=240,5a+9b<=450.maximize the profit 5a+6b
a=linspace(1,100,10);
b=(240-4*a)/3;
plot2d(a,b,3);
b=(450-5*a)/9;
plot2d(a,b,5);
//find the point in this region where 5a+6b is greatest with the parallel lines concept
//consider the parallel lines 5a+6b=100 , 5a+6b=150 , 5a+6b=300 ... the 2nd two are shown on graph \n");
b=(150-6*a)/5;
plot(a,b,'b--.x');
b=(300-6*a)/5;
plot(a,b,'b--.o');
// as profit gets larger, profit line moves up to the right
a=39;b=28;
m=5*a+6*b;
mprintf('\n the maximimum profit %i occurs at (%i,%i) \n',m,a,b);
xtitle("Model A vs. Model B ","Model A","Model B");
xgrid;
legend("4a+3b<=240","5a+9b<=450","5a+6b=150","5a+6b=300");





