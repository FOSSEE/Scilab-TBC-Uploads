//Example 7.1

clc
clear

x = 0:0.2:1;
y = [1 1.16 3.56 13.96 41.96 101];

n = length(x);
del = %nan*ones(n,6);
del(:,1) = y';
for j = 2:6
    for i = 1:n-j+1
        del(i,j) = del(i+1,j-1) - del(i,j-1);
    end
end
del = round(del*10^2)/10^2;
mprintf("%5s %6s %9s %8s %8s %8s %7s",'x','y','dy','d2y','d3y','d4y','d5y')
disp([x' del])

h = x(2) - x(1);
del0 = del(1,:);
del1 = del(2,:);

df1 = (del1(2) - del1(3)/2 + del1(4)/3 - del1(5)/4) / h;
d2f0 = (del0(2) - del0(3) + del0(4)*11/12 - del0(5)*5/6) / h^2;
disp(round(d2f0*10^1)/10^1,"f''''(0) = ")
disp(round(df1*10)/10,"f''(0.2) = ")

