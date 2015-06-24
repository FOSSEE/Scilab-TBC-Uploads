//Bisection Method
clc;
clear;
close();
format('v',9);
b(1)=1;a(1)=0;k=5;
deff('[fx]=bisec(x)','fx =(x+1).^2.*exp(x.^2-2)-1');
x = linspace(0,1);
plot(x,((x+1).^2).*(exp(x.^2-2))-1);
//in interval [0,1]changes its sign thus has a root
//k = no of decimal place of accuracy
//a = lower limit of interval
//b = upper limit of interval
//n = no of iterations required
n = log2((10^k)*(b-a));
n = ceil(n);
disp(n,'Number of iterations : ')
for i = 1:n-1
    N(i) = i;
    c(i) = (a(i)+b(i))/2;
    bs(i) = bisec(c(i));
    if (bisec(b(i))*bisec(c(i))<0)
        a(i+1)=c(i);
        b(i+1)=b(i);
    else
        b(i+1)=c(i);
        a(i+1)=a(i);
    end
end
N(i+1)=i+1;
c(i+1) = (a(i+1)+b(i+1))/2;
bs(i+1) = bisec(c(i));
ann = [N a b c bs];
disp(ann , 'The Table : ');
disp(c(i),'The root of the function is : ')