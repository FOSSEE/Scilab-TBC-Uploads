//Example 9.3

clc
clear

delx = 0.1;
delt = 0.001;
xf = 0.5;
tf = 0.003;
x = 0:delx:xf;
t = 0:delt:tf;
m = length(x);
n = length(t);
r = delt/delx^2;

T = zeros(m,n);
T(1:m,1) = 0;
delTxi = 0;
delTxf = 1;

for j = 1:n
    M1 = zeros(m,m);
    M2 = zeros(m,1);
    for i = 1:m
        if i == 1 then
            M1(i,i) = 1;
            M1(i,i+1) = -1;
            M2(i) = -delx * delTxi;
        elseif  i == m then
            M1(i,i) = 1;
            M1(i,i-1) = -1;
            M2(i) = delx * delTxf;
        else
            M1(i,i) = 1;
            M2(i) = r*T(i+1,j) + (1-2*r) * T(i,j) + r*T(i-1,j);
        end
    end
    T(1:m,j+1) = (M1\M2);
end
T = T(:,2:n+1);
mprintf("%4s %7s %9s %5s %7s %9s %9s %9s",'n','t','x = 0.0','x=0.1','x = 0.2','x = 0.3','x = 0.4','x = 0.5');
disp([(0:n-1)' t' T'])
