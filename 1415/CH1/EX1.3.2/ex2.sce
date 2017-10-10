//Example 2 Page 81
clc
clear
disp('a)')
disp('two write the equation we need the two values one is the slope m and other is y intercept b')
disp('the given points are')
disp('(1,2),(3,-1)')
y2=-1;//assigning the values
y1=2;//assigning the values
x1=1;//assigning the values
x2=3;//assigning the values
m=(y2-y1)/(x2-x1);//calculating m value
mprintf("the slope of the line m = %f",m);//printing the valye m
disp('we now find the y intercept b')
b=y1-m*x1;//calculating the value b
mprintf("the value of b = %f",b);//printing the valye b
disp('substituting the values m and b in the equation we get the equation of the line is')
disp('y=3x/2+7/2')

disp('b)')
// we dont have the two points here but we have the parallel line
disp('the line parallel has the same slope ')
//the given line is 3x+4y=5
m=-3/4//assigning the slope value
disp('we now have the slope and also the point (2,-2)')
x1=2//assigning the value of x1
y1=-2//assigning the value of y1
b=y1-m*x1;//calculating b value
disp(b,'b=-2-(-3/4)(2)=')
disp('substituting the values m and b in the equation y=mx+c, we get' )
disp('y=-3x/4-7/2')


disp('c)')
//since the line is horizontal it means that the slope m = 0
disp('the point is (-9,5)')
m=0//since the line is horizontal
x1=-9//assigning the valye
y1=5//assigning the value
b=y1-m*x1;//calculating b value
 disp(b,'5-(0)(-9)=')//displaying the value of b
 disp('the line is y=5')//displaying line quation


disp('d)')
//since the line is vertical the slope is undefined
disp('the line can be any solution  so we take it as x=-9')
