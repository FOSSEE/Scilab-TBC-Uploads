//Example 7.2

clc
clear

x = 1.4:0.2:2.2;
y = [4.0552 4.953 6.0496 7.3891 9.025];

n = length(x);
del = %nan*ones(n,5);
del(:,1) = y';
for j = 2:5
    for i = 1:n-j+1
        del(i+j-1,j) = del(i+j-1,j-1) - del(i+j-2,j-1);
    end
end
mprintf("%5s %6s %10s %10s %9s %9s",'x','y','dy','d2y','d3y','d4y')
disp([x' del])

h = x(2) - x(1);
deln = del(5,:);

dfn = (deln(2) + deln(3)/2 + deln(4)/3 + deln(5)/4) / h;
d2fn = (deln(3) + deln(4) + deln(5)*11/12) / h^2;
dfn = round(dfn*10^4)/10^4;
d2fn = round(d2fn*10^4)/10^4;
disp(dfn,"y''(2.2) = ")
disp(d2fn,"y''''(2.2) = ")
