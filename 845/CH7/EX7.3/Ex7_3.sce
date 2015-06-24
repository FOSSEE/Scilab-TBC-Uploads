//Example 7.3

clc
clear

x = 0:4;
y = [6.9897 7.4036 7.7815 8.1281 8.451];

n = length(x);
del = %nan*ones(n,5);
del(:,1) = y';
for j = 2:6
    for i = 1:n-j+1
        del(i,j) = del(i+1,j-1) - del(i,j-1);
    end
end
del(:,1) = [];
n0 = length(del(1,:));

X = 2;
i = find(x==X);
dowy = 0;

for j = 1:n0
    if j==2*int(j/2) then
        add = del(i,j);
    else
        add = (del(i-1,j) + del(i,j))/2;
        i = i-1;
        if i==0 then
            break
        end
    end

    if add == %nan then
        break
    else
        dowy(j) = add;
    end
end
mprintf("%5s %6s %10s %9s %9s %9s",'x','y','dy','d2y','d3y','d4y')
disp([x' y' del])

mu = 1;
h = x(2) - x(1);
dy2 = mu/h*(dowy(1) - 1/6*dowy(3));
d2y2 = mu/h^2*(dowy(2)-1/12*dowy(4));
dy2 = round(dy2*10^4)/10^4;
d2y2 = round(d2y2*10^4)/10^4;

disp(dy2,"y''(2) = ")
disp(d2y2,"y''''(2) = ")
