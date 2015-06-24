//Example 10.4

clc
clear

h = 1/3;
x = 0:h:1;
y = 0:h:1;
m = length(y);
n = length(x);
u = zeros(m,n);
u(m,2:n-1) = 1;

kf = 5;
tab = zeros(kf,(m-2)*(n-2));
for k = 1:kf
    row = [];
    for j = 2:n-1
        for i = 2:m-1
            constant = 10/9* (5 + 1/9*(i-1)^2 + 1/9*(j-1)^2);
            u(j,i) = (u(j,i-1) + u(j,i+1) + u(j-1,i) + u(j+1,i) + constant) / 4;
        end
        row = [row u(j,2:m-1)];
    end
    row = round(row*10^4)/10^4;
    tab(k,:) = row;
end
mprintf("%4s %9s %9s %9s %9s",'r','u11','u21','u12','u22')
disp([(1:k)' tab])
