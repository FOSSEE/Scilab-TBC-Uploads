//Example 9.7

clc
clear

h = 2;
delt = 4;
tf = 8;
xf = 8;
yf = 6;
x = 0:h:xf;
y = 0:h:yf;
t = 0:delt:tf;
m = length(x);
n = length(y);
p = length(t);
r = delt/h^2;
r = round(r*10^2)/10^2;

T = 50*ones(n,m);
T0 = T;
T(1,1:m) = 110:-10:70;
T(n,1:m) = 0:10:40;
T(2:n-1,1) = [65; 25];
T(2:n-1,m) = [60; 50];

u = (m-2)*(n-2);
index = [repmat(2:m-1,1,n-2); gsort(repmat(2:n-1,1,m-2))];

M1 = zeros(u,u);
M2 = zeros(u,1);
for j = 2:m-1
    for i = 2:n-1
        ind = find(index(1,:)== j& index(2,:) == i);
        if j == 2 then
            M1(ind,ind) = 1+2*r;
            M1(ind,ind+1) = -r;
            M2(ind) = r*T(i,j-1) + r*T0(i-1,j) + (1-2*r)*T0(i,j) + r*T0(i+1,j);
        elseif j == m-1 then
            M1(ind,ind-1) = -r;
            M1(ind,ind) = 1+2*r;
            M2(ind) = r*T(i,j+1) + r*T0(i-1,j) + (1-2*r)*T0(i,j) + r*T0(i+1,j);
        else
            M1(ind,ind-1) = -r;
            M1(ind,ind) = 1+2*r;
            M1(ind,ind+1) = -r;
            M2(ind) = r*T0(i-1,j) + (1-2*r)*T0(i,j) + r*T0(i+1,j);
        end
    end
end
value = M1\M2;
value = round(value*10^4)/10^4;
for i = 1:length(index(1,:))
    t = index(:,i);
    T(t(2),t(1)) = value(i);
end
disp(T,"At t = 4:")
T0 = T;

index = gsort(index,'lc','i');
M1 = zeros(u,u);
M2 = zeros(u,1);
for j = 2:m-1
    for i = 2:n-1
        ind = find(index(1,:)== j& index(2,:) == i);
        if i == 2 then
            M1(ind,ind) = 1+2*r;
            M1(ind,ind+1) = -r;
            M2(ind) = r*T(i-1,j) + r*T0(i,j-1) + (1-2*r)*T0(i,j) + r*T0(i,j+1);
        elseif i == n-1 then
            M1(ind,ind-1) = -r;
            M1(ind,ind) = 1+2*r;
            M2(ind) = r*T(i+1,j) + r*T0(i,j-1) + (1-2*r)*T0(i,j) + r*T0(i,j+1);
        else
            M1(ind,ind-1) = -r;
            M1(ind,ind) = 1+2*r;
            M1(ind,ind+1) = -r;
            M2(ind) = + r*T0(i,j-1) + (1-2*r)*T0(i,j) + r*T0(i,j+1);
        end
    end
end
value = M1\M2;
value = round(value*10^4)/10^4;
for i = 1:length(index(1,:))
    t = index(:,i);
    T(t(2),t(1)) = value(i);
end
disp(T,"At t = 8:")
