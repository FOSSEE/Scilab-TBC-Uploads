//Example 4_3
clc;clear;funcprot(0);
//Given values
x=2;
y=3;
// Analysis
function[ax,ay]=vecac(x,y)
    [X,Y] = meshgrid(x,y);
    ax = 0.4+0.64*X;
    ay=-1.2+0.64*Y;
endfunction
x = linspace(-2,2,5);
y = linspace(0,5,6);
[ax,ay]=vecac(x,y);
[ax1,ay1]=vecac(2,3);
printf('\nThe material acceleration at point (x=2m,y=3m),a_x=%0.2f m/s^2 and a_y=%0.2f m/s^2',ax1,ay1);
champ(x',y',ax',ay'); 
xgrid(1);
xtitle('Scale:10 m/s^2');
xlabel('x');
ylabel('y');
