//Example 10.1

clc
clear

h = 1/4;
xf = 1;
yf = 1;
x = 0:h:xf;
y = 0:h:yf;
m = length(y);
n = length(x);

u = zeros(m,n);
u(m,:) = 100*x;
u(:,n) = 100*y';
u0 = u;

I = ceil(m/2);
J = ceil(n/2);

u(J,I) = (u0(J-2,I-2) + u0(J-2,I+2) + u0(J+2,I-2) + u0(J+2,I+2)) / 4;

for j = [J-1 J+1]
    for i = [I-1 I+1]
        u(j,i) = (u(j-1,i-1) + u(j-1,i+1) + u(j+1,i-1) + u(j+1,i+1)) / 4;
    end
end

j1 = [J-1 J J J+1];
i1 = [I I-1 I+1 I];
for k = 1:4
    i = i1(k);
    j = j1(k);
    u(j,i) = (u(j,i-1) + u(j,i+1) + u(j-1,i) + u(j+1,i)) / 4;
end

disp(u,"u:")
