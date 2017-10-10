
s=%s;
G=10/(s*(s+10))
T=G/(1+G)
disp(T,"T = ")

//compare A*sin(w*t) and 10*sin(8*t)
A=10;
w=8;
disp("c(t) = A*10/(sqrt((10-w^2)^2 + 100*w))*(sin(8*t-atan(10*w/(10-w^2))))")
