//Example 8.7
//Simpsons 1/3rd Rule
//Page no 273
clc;clear;close;

a=100;b=200;
h=50;
n=(b-a)/h+1
for i=1:n
    x(1,i)=a+(i-1)*h
    f(1,i)=1/log(x(1,i))
end
disp(f,"f = ",x,"x = ","If h = 50")
l=h*(f(1,1)+4*f(1,2)+f(1,3))/3
disp(l,"I = ")
printf('\n\n')
h=25;
n=(b-a)/h+1
for i=1:n
    x(1,i)=a+(i-1)*h
    f(1,i)=1/log(x(1,i))
end
disp(f,"f = ",x,"x = ","If h = 25")
l=h*(f(1,1)+f(1,5)+4*(f(1,2)+f(1,4))+2*f(1,3))/3
disp(l,"I = ")
f1=0;
for i=100:200
    l=0;
    for j=2:i/2+1
        if fix(i/j)~=i/j then
            l=l+1;
        end
    end
    if l==fix(i/2) then
        f1=f1+1
    end
end
disp(f1,"Exact no. of Prime Numbers = ")