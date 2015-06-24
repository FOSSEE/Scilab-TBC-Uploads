//Example 1.13<i>
//Check whether the given signal is periodic or not
clc;
t=-10:.01:10;
y=2*cos(10*t+1)-sin(4*t-1);
subplot(221)
plot(t,y);
disp('(a) The following signal is periodic with period %pi' );
//Example 1.13<ii>
//Show whether the given signal is periodic or not
clc;
t=-1:.01:1;
x=cos(60*%pi*t)+sin(50*%pi*t);
subplot(222)
plot(t,x);
disp('(b)Ther following figure shows that the given signal is periodic with the following period');
//Example1.13<iv>
//Check whether the given signal is periodic or not
clc;
t=-10:0.01:10;
x=3*cos(4*t)+2*sin(%pi*t);
subplot(223)
plot(t,x);
disp('(c)The signal is not periodic since ratio of two time periods is %pi/4 which is not rational number');
//Example 1.13<V>
//Check whether the given signal is periodic or not
clc;
t=0:10;
for i=1:length(t)
    u(i)=1;
end
x=u(i)-(1/2);
subplot(224)
plot(t,x);
disp('(d)The signal is not periodic as seen from figure');

disp('In the figure we have the plots of part (a) - (d) in clockwise order strating from the top left')

