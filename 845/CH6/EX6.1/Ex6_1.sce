//Example 6.1

clc
clear

x = 0.1:0.2:1.3;
y = [0.003 0.067 0.148 0.248 0.37 0.518 0.697];

n = length(x);
del = %nan*ones(n,6);
del(:,1) = y';
for j = 2:6
    for i = 1:n-j+1
        del(i,j) = del(i+1,j-1) - del(i,j-1);
    end
end
del = [x' del];
del = round(del*10^3)/10^3;
mprintf("%5s %7s %8s %9s %8s %8s %8s",'x','y','dy','d2y','d3y','d4y','d5y')
disp(del)
