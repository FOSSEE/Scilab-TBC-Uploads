//ques34
disp('Equation of tangent');
syms x a t y
xo=a*(cos(t)+t*sin(t));
yo=a*(sin(t)-t*cos(t));
s=diff(xo,t)/diff(yo,t);
y=yo+s*(x-xo);
disp('y=');
disp(y);

