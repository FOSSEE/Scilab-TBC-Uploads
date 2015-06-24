//The solution using false position method
clc;
clear;
close();
b(1)=1;a(1)=0;k=5;i=1;
format('v',9);
deff('[fx]=bisec(x)','fx =(x+1)^2*exp(x^2-2)-1');
x = linspace(0,1);
plot(x,((x+1).^2).*(exp(x.^2-2))-1);
//in interval [0,1]changes its sign thus has a root
//k = no of decimal place of accuracy
//a = lower limit of interval
//b = upper limit of interval
c(i) = (a(i)*bisec(b(i))-b(i)*bisec(a(i)))/(bisec(b(i))-bisec(a(i)));
bs(1)=bisec(c(1));
N(1) = 1;
a(i+1)=c(i);
b(i+1)=b(i);
while abs(bisec(c(i)))>(0.5*(10^-k))
    i = i+1;
    N(i)=i;
    c(i) = (a(i)*bisec(b(i))-b(i)*bisec(a(i)))/(bisec(b(i))-bisec(a(i)));
    bs(i) = bisec(c(i));
    if (bisec(b(i))*bisec(c(i))<0)
        a(i+1)=c(i);
        b(i+1)=b(i);
    else
        b(i+1)=c(i);
        a(i+1)=a(i);
    end
end
a(10)=[];b(10)=[];
ann = [N a b c bs];
disp(ann , 'The Table : ');
disp('The root of the function is bracketed by [0.647116 1] ');