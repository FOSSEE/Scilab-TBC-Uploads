//Example 6.19

clc
clear

x = 0:4;
n = length(x);
f = "X^2 + Y^2 - Y";
tab = %nan*ones(n,5);

for j = 0:4
    fj = strsubst(f,'Y','j');
    for i = 1:n
        tab(i,j+1) = eval(strsubst(fj,'X','x(i)'));
    end
end
//tab(:,1) = [];
mprintf("%4s %6s %6s %6s %6s %6s",'x','y=0','y=1','y=2','y=3','y=4')
disp([(0:4)' tab])
tab2 = tab(2:4,2:4)';
n1 = length(tab2(:,1));
y = 2:4;

del1 = %nan*ones(n1,3);
del1(:,1) = tab2(:,1);
for j = 2:4
    for i = 1:n1-j+1
        del1(i,j) = del1(i+1,j-1) - del1(i,j-1);
    end
end

del2 = %nan*ones(n1,3);
del2(:,1) = tab2(:,2);
for j = 2:4
    for i = 1:n1-j+1
        del2(i,j) = del2(i+1,j-1) - del2(i,j-1);
    end
end

del3 = %nan*ones(n1,3);
del3(:,1) = tab2(:,3);
for j = 2:4
    for i = 1:n1-j+1
        del3(i,j) = del3(i+1,j-1) - del3(i,j-1);
    end
end

y0 = y(1);
Y = 3.5;
hy = y(2) - y(1);
py = (Y-y0)/hy;

f1y = 0;
del1y0 = del1(1,:);
for i = 0:length(del1y0)-1
    t = 1;
    for j = 1:i
        t = t * (py-j+1);
    end
    f1y = f1y + t*del1y0(i+1)/factorial(i);
end

f2y = 0;
del2y0 = del2(1,:);
for i = 0:length(del2y0)-1
    t = 1;
    for j = 1:i
        t = t * (py-j+1);
    end
    f2y = f2y + t*del2y0(i+1)/factorial(i);
end

f3y = 0;
del3y0 = del3(1,:);
for i = 0:length(del3y0)-1
    t = 1;
    for j = 1:i
        t = t * (py-j+1);
    end
    f3y = f3y + t*del3y0(i+1)/factorial(i);
end

del = %nan*ones(n1,3);
del(:,1) = [f1y; f2y; f3y];
for j = 2:4
    for i = 1:n1-j+1
        del(i,j) = del(i+1,j-1) - del(i,j-1);
    end
end

f = 0;
X = 2.5;
x0 = x(2);
hx = x(2) - x(1);
px = (X-x0)/hx;
del0 = del(1,:)
for i = 0:length(del0)-1
    t = 1;
    for j = 1:i
        t = t * (px-j+1);
    end
    f = f + t*del0(i+1)/factorial(i);
end
disp(f,"f(2.5,3.5) = ")
