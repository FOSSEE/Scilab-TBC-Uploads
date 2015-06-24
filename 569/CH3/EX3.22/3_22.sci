//to find the mean,standard deviation, probable error and range

clc;
x=[41.7 42 41.8 42 42.1 41.9 42 41.9 42.5 41.8];
X=sum(x); disp(X);
d=[-.27 .03 -.17 .03 .13 -.07 .03 -.07 .53 -.17];
d_2=sum(d^2);
n=10;
disp(X/n,'mean length(deg C)');
disp(sqrt(d_2/n),'standard deviation(if data is infinite)(deg C)');
disp(sqrt(d_2/(n-1)),'standard deviation(deg C)');
r1=.6745*sqrt(d_2/(n-1));
disp(r1,'probable error of 1 reading(deg C)');
disp(r1/sqrt(n-1),'probable error of mean(deg C)');
disp(max(x)-min(x),'range(deg C)');