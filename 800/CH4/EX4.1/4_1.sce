//clear//
clc
clear
exec("4.1data.sci");
 
x=t;
y =((CA0-CC)/CA0);

yi=interpln([x;y],x);
plot2d(x,y,logflag='nl');

k = log(y(9)/y(2))/(t(9)-t(2));


disp("k =")
disp(k)
disp ("min^-1")
