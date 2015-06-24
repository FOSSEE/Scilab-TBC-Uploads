clc;
syms y y1 y2 x;
t = %pi/2;j = 0:%pi;
y = 5*cos(t);disp(y,"at x = pi/2, y =");
y1 = -5*sin(t);disp(y1,"at x = pi/2, dy/dt =");
printf("\n  neglecting higher order terms");
k = y + y1*(x-%pi/2);
disp(k,"linearized y =");



