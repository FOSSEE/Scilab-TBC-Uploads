// Example 2_6
clc;funcprot(0);
// Given data
v_0=80;// The launch speed in ft/sec
theta=35;// The launch angle in degree
m=8;// lb
g=32.2;// The acceleration due to gravity in ft/sec^2
y_0=6;// ft
x_0=0;// ft
x=100+30;// ft

// Calculation
v_x0=v_0*cosd(theta);// ft/sec
t=(x-x_0)/v_x0;// s
v_y0=v_0*sind(theta);// ft/sec
y=(y_0+(v_y0*t))-((1/2)*g*t^2);// ft
// (a)
// We now find the flight time by setting
y_01=20;// ft
function[X]=time(y)
    X(1)=((y_0+(v_y0*y(1))-((1/2)*g*y(1)^2)))-y_01;
endfunction
y=[10];
z=fsolve(y,time);
t_f=z(1);// s
x=x_0+(v_x0*t_f);// ft
printf("\n(a)The time duration of the flight,t_f=%1.2f s",t_f);
//(b)
printf("\n(b)Thus the point of first impact is (x,y)=(%3.0f,%2.0f)ft",x,y_01);
// (c)
v_y=0;// ft
h=((v_y0^2-v_y^2)/(2*g))+6;// ft
printf("\n(c)The maximum height above the horizontal field attained by the ball,h=%2.1f ft",h);
// (d)
v_x=v_x0;// ft/sec
v_y=v_y0-(g*t_f);// ft/sec
printf("\n(d)The impact velocity,v=%2.1f i+(%2.1f j) ft/sec",v_x,v_y);
x=100+30;// ft (given)
v_0=75;// ft/sec (given)
v_x0=v_0*cosd(theta);// ft/sec
t=(x-x_0)/v_x0;// s
v_y0=v_0*sind(theta);// ft/sec
y=(y_0+(v_y0*t))-((1/2)*g*t^2);// ft
printf("\n   The point of impact is (x,y)=(%3.0f,%2.1f)ft",x,y);
