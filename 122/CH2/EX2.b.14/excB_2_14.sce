// Exercise B-2-14

// An illustration on Linearization
// Linearize the function y = f(x) = 0.2*x^3 at x=2
// SOLUTION : y = 2.4*x - 3.2

// Let us observe graphically the linear approximation
// and the error, and percentage error

clear; clc; xdel(winsid());

x = 0.05:0.05:5;
y = 0.2 * x .^ 3;

yl = 2.4 * x - 3.2 ;       // this is not a linear system!
err = abs(y - yl);         //Error in approximation
errpc = err ./ y  * 100;   //Percentage error 

subplot(2,1,1);
plot2d(x,y,style=2);
plot2d(x,yl,style=3,leg="linearized system");
xtitle('Original and linearized system','x','y');

subplot(2,1,2);
plot2d(x,err,style=5);
xtitle('Error','x','error');

scf();
plot2d(x,errpc,style=5,rect=[1 0 3 100]);
plot2d(x, 10 * ones(1,length(x)) ,style=2,leg="10% error margin" );
xtitle('Percentage Error','x','% error');
