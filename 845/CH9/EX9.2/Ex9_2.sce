//Example 9.2

clc
clear

delx = 0.1;
delt = 0.002;
xf = 1;
tf = 0.006;
x = 0:delx:xf;
t = 0:delt:tf;
m = length(x);
n = length(t);
lamda = delt/delx^2;

y = zeros(n,m);
y(1:n,1) = 0;
y(1:n,m) = 0;
y(1,1:m) = sin(%pi*x);
for k = 2:n
    M1 = zeros(m-2);
    M2 = zeros(m-2,1);
    for i = 1:m-2
        M1(i,i) = 1+2*lamda;
        if i==1
            M1(i,i+1) = -lamda;
            M2(i) = y(k-1,i+1) + lamda*y(k,i);
        elseif i==m-2
            M1(i,i-1) = -lamda;
            M2(i) = y(k-1,i+1) + lamda*y(k,i+2);
        else
            M1(i,i+1) = -lamda;
            M1(i,i-1) = -lamda;
            M2(i) = y(k-1,i+1);
        end
    end
    y(k,2:m-1) = (M1\M2)';
end
y = round(y*10^4)/10^4;
mprintf("%4s %7s %9s %8s %9s %9s %9s %9s %9s %9s %9s %9s %9s",'n','t','x = 0.0','x = 0.1','x = 0.2','x = 0.3','x = 0.4','x = 0.5','x = 0.6','x = 0.7','x = 0.8','x = 0.9','x = 1.0');
disp([(0:n-1)' t' y])

disp("At t = 0.006:")
disp(y(n,1:m),"Computed Solution:")
Texact = exp(-%pi^2*tf)*sin(%pi*x);
Texact = round(Texact*10^4)/10^4;
disp(Texact,"Analytical Solution:")
