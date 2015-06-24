//Example 9.4

clc
clear

delx = 0.25;
delt = 1/32;
xf = 1;
tf = delt;
x = 0:delx:xf;
t = 0:delt:tf;
m = length(x);
n = length(t);
r = delt/delx^2;


T = zeros(m,n);
T(1:m,1) = 1;
T(1,1:n) = 0;
T(m,1:n) = 0;

for j = 1:n-1
    M1 = zeros(m-2,m-2);
    M2 = zeros(m-2,1);
    for i = 2:m-1
        if i == 2 then
            M1(i-1,i-1)   = -2*(1+r);
            M1(i-1,i) = r;
            M2(i-1)     = -(r*T(i+1,j) + 2*(1-r)*T(i,j) + r*T(i-1,j));
        elseif i == m-1
            M1(i-1,i-2) = r;
            M1(i-1,i-1)   = -2*(1+r);
            M2(i-1)     = -(r*T(i+1,j) + 2*(1-r)*T(i,j) + r*T(i-1,j));
        else
            M1(i-1,i-2) = r;
            M1(i-1,i-1)   = -2*(1+r);
            M1(i-1,i) = r;
            M2(i-1)     = -(r*T(i+1,j) + 2*(1-r)*T(i,j) + r*T(i-1,j));
        end
    end
    T(2:m-1,j+1) = (M1\M2);
end
T1 = M1\M2;
for i = 1:length(T1)
    disp(strcat(["T",string(i)," = ",string(T1(i))]));
end
