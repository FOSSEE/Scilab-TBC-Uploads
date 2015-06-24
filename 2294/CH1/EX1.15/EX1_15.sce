//Example 1.15<i>
//Find the even and odd components of the signal
clc;
clear;
t=-10:.1:10;
for j=1:length(t)
    i=t(j);
    x(j)=cos(i)+sin(i)+cos(i)*sin(i);
    y(j)=cos(-i)+sin(-i)+cos(-i)*sin(-i);
    e(j)=(1/2)*(x(j)+y(j));   
    o(j)=(1/2)*(x(j)-y(j));
end
disp('In the plot even component is in red and odd component is in blue')
plot(t,e,'red')
plot(t,o,'blue')
//Example 1.15<ii>
//Find the even and odd components of the signal
clc;
clear;
n=-2:2;
c=3;
x=[-2 1 2 -1 3];
for j=1:length(n)
    i=n(j);
    xe(j)=(1/2)*(x(c+i)+x(c-i));
    xo(j)=(1/2)*(x(c+i)-x(c-i));
end
xe=[xe(c-2),xe(c-1),xe(c+0),xe(c+1),xe(c+2)];
xo=[xo(c-2),xo(c-1),xo(c+0),xo(c+1),xo(c+2)];

disp(xo,'odd component')
disp(xe,'even component')


