//ex_5 d even and odd signals of x(t)
clear;
clc;
close;
t=0:5;
x=[ 0 2 4 2 0 0];
figure
a=gca();
plot2d3(t,x)
plot(t,x,'r.')
xtitle('x[n]','n')
a.thickness=2;
figure
a=gca();
t2=-5:5 ;
y=[ x($:-1:2)./2  x(1)  x(2:6)./2 ]
plot2d3(t2,y)
plot(t2,y,'r.')
xtitle('even','n')
a.y_location='right';
a.thickness=2;
figure
a=gca();
z=[ -x($:-1:2)./2  0  x(2:6)./2  ]
plot2d3(t2,z)
plot(t2,z,'r.')
xtitle('odd','n')
a.y_location='right';
a.x_location='origin';
a.thickness=2;
