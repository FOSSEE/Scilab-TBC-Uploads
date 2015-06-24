clc
disp("Example 7.3")
printf("\n")

t1=-10:0.05:10
v=5*cos (%pi*t1/6+%pi/6)
figure
a= gca ();
plot(t1,v)
xtitle ('v vs %pi*t/6','%pi*t/6','v ');
a. thickness = 2;

