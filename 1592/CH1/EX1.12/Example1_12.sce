//Scilab Code for Example 1.12 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear;
x=-2:1:3;
y=[-1.5,2,2,1,-1.5,2.5];
//Plot of x(n)
plot2d3(x,y,5);
xtitle ( 'Time Scaling x(n)');
a = gca(); // get the current axes
a.x_location = "origin";
a.y_location = "origin";
x=-2:1:3;
y=[0,-1.5,2,-1.5,0,0];
figure(1);
//Plot of x(2n)
plot2d3(x,y,5);
a = gca(); // get the current axes
a.x_location = "origin";
a.y_location = "origin";
xtitle ( 'Time Scaling x(2n)' );

