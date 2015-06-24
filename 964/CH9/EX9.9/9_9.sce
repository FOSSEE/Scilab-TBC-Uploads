//clc()
//0.0003*x1 + 3*x2 = 2.0001
//1*x1 + 1*x2 = 1
a11 = 0.000;
//multiplying first equation by 1/0.0003, we get, x1 + 10000*x2 = 6667
x2 = (6667-1)/(10000-1);
x1 = 6667 - 10000*x2;
disp(x2,"x2 = ")
disp(x1,"x1 = ")
disp("The error varies depending on the no. of significant figures used")
