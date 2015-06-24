//Example 1.12<i>
//check whether the given signal is periodic or not
clc;
t=-5:.01:5;
x=%i*(exp(%i*5*t));
subplot(311)
plot(t,x);
disp('(a)This shows that the given signal is periodic with priod(.4*%pi)');
//Example 1.12<ii>
//Show whether the given signal is periodic or not
clc;
t=-1/5:0.001:1/5;
x=sin(50*%pi*t);
subplot(312)
plot(t,x);
disp('(b)the plotting shows that the given signal is periodic with period 1/25');
//Example 1.12.<iii>
//Check whether the given signal is periodic or not
clc;
t=-1:0.01:1;
x=20*cos((10*%pi*t)+(%pi/6));
subplot(313)
plot(t,x);
disp('(c)Plot shows that the given signal is periodic with period .2');

disp('In the figure we have the plots of part (a) - (c) in clockwise order strating from the top left')





