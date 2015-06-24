//Example 8.1
//Simpsons 1/3rd Rule
//Page no 264
clc;clear;close;
a=0;b=5;n=10;h=(-a+b)/n

for i=1:n
    if i==1 then
        x(1,i)=a
    else
        x(1,i)=x(i-1)+h
    end
    y(1,i)=1/(4*x(i)+5)
end
disp(y,"f(x) = ",x,"x = ")
S=0;
for i=1:n
    if(i==1 | i==n)
        S=S+y(1,i)
    elseif(((i)/2)-fix((i)/2)==0)
        S=S+4*y(1,i)
    else
        S=S+2*y(1,i)
    end
end
S=S*h/3;
printf('\n\nSimpsons 1/3rd Rule Sum = %g\n\nlog(5) = %.3g',S,log(5))