//Eg-13.1
//pg-522

clear
clc

//Given equation dy/dx = x. Hence F'(x) = 1 and F''(x) = 0 

//In the taylor series expnsion, if we write y0 in place of y(x0), we have
// y(1) = y1 = y(x0+h) = y0 + hx0 + h^2/2

x0 = 0;
y0 = 0;    //Initial condition

h = 1;    //taking the value ourself

y1 = y0 + h*x0 + h^2/2;

printf('The value of y at x = 1 is %f\n',y1)
printf(' This is the exact solution since the higher derivatives starting from second order derivative of F vanish\n')