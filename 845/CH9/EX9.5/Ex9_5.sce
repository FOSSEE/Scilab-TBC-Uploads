//Example 9.5

clc
clear

delx = 1;
delt = 1.893;
alpha = 0.132;
xf = 4;
tf = delt;
x = 0:delx:xf;
t = 0:delt:tf;
m = length(x);
n = length(t);
r = alpha*delt/delx^2;
r = round(r*10^2)/10^2;

T = zeros(m,n);
T(1:m,1) = 1000;

for j = 1:n-1
    M1 = zeros(m,m);
    M2 = zeros(m,1);
    for i = 1:m
        if i == 1 then
            M1(i,i) = -(2+2.15*r);
            M1(i,i+1) = 2*r;
            M2(i) = -(2*r*T(2,j) + (2-2.15*r)*T(1,j) + 21*r);
    elseif  i == m then
        M1(i,i) = -(2+1.75*r);
        M1(i,i-1) = 2*r;
        M2(i) = -(2*r*T(m-1,j) + (2-1.75*r)*T(m,j) - 35*r);
        else
            M1(i,i-1) = r;
            M1(i,i)   = -2*(1+r);
            M1(i,i+1) = r;
            M2(i)     = -(r*T(i+1,j) + 2*(1-r)*T(i,j) + r*T(i-1,j));
        end
    end
    T(1:m,j+1) = (M1\M2);
end
disp(M1,"Coefficient Matrix:")
disp(M2,"Constant Matrix:")
T = round(T*10^4)/10^4;
disp(T',"Table:")
