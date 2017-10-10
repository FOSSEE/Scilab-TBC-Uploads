//Example 1.13<i>
//Check whether the given signal is periodic or not
clc;
t1=-10:.01:10;
y1=2*cos(10*t1+1)-sin(4*t1-1);
subplot(221)
plot(t1,y1);
disp('(a) The following signal is periodic with period %pi' );
//Example 1.13<ii>
//Show whether the given signal is periodic or not
clc;
t2=-1:.01:1;
x2=cos(60*%pi*t2)+sin(50*%pi*t2);
subplot(222)
plot(t2,x2);
disp('(b)Ther following figure shows that the given signal is periodic with the following period');
//Example1.13<iv>
//Check whether the given signal is periodic or not
clc;
t3=-10:0.01:10;
x3=3*cos(4*t3)+2*sin(%pi*t3);
subplot(223)
plot(t3,x3);
disp('(c)The signal is not periodic since ratio of two time periods is %pi/4 which is not rational number');
//Example 1.13<v>
//Check whether the given signal is periodic or not
clc;
t=0:10;
for i=1:length(t)
    u(i)=1;
    x(i)=u(i)-(1/2);
end

subplot(224)
plot(t,x);
disp('(d)The signal is not periodic as seen from figure');

disp('In the figure we have the plots of part (a) - (d) in clockwise order strating from the top left')