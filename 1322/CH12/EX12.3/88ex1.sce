
//Given  :Inequalities x+3*y<=24, 3*x+y<21.
clc;
clear;
clf();
x=linspace(0,9,10);
y=21-3*x;
plot2d(x,y,3); //"points in the region y<21-3*x lie below the line y=21-3*x"
y=(24-x)/3;
plot2d(x,y,5);//"points in the region y<=(24-x)/3 lie below or on the line y=(24-x)/3"
xtitle("greatest values in a region","x axis","y axis");
xgrid;
printf(" \n from graph, (3,7),(4,6),(5,5) are points where x+y is largest \n")
y=10-x;//3+7=10,4+6=10,5+5=10 so, all the points lie on the line x+y=10
x=3;y=7;plot(x,y,'b.diam')
x=4;y=6;plot(x,y,'b.diam')
x=5;y=5;plot(x,y,'b.diam')
//"points on the line 3*x+y<21 are not included since we want 3*x+y<21 and not 3*x+y<=21"
legend("3*x+y<21","x+3*y<=24","10-x");

