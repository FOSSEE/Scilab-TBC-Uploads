//Example 2.13
clc
clear

a = [-6 11 -6 1];
maxit = 3;
for iter = 1:maxit
    a = [a(4)^2 -(a(3)^2 -2*a(2)*a(4)) (a(2)^2 - 2*a(1)*a(3)) -a(1)^2];
    root = abs([a(4)/a(3) a(3)/a(2) a(2)/a(1)])^(1/(2^iter));
end
root = round(root*10^5) / 10^5;
disp(root,"Estimated roots for the polynomial are: ")
