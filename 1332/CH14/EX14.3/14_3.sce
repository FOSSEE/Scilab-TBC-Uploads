//Example 14.3
//Trapezoidal Rule and Simpsons Rule
//Page no. 442
clc;close;clear;
n=2;a=0;b=1;
h=(b-a)/n
deff('y=f(x)','y=1/(1+x)')
for i=0:2
    x(i+1)=i/2;
    y(i+1)=f(x(i+1))
end
printf('xi\t ')
for i=1:3
    printf('%g\t ',x(i))
end
printf('\n yi\t')
for i=1:3
    printf('1/%g\t',1+(i-1)/2)
end

//trapezoidal rule
S=0;
for i=1:3
    if(i==1 | i==3)
        S=S+y(i)
    else
        S=S+2*y(i)
    end
end
S=S*h/2
printf('\n\nTrapezoidal Rule Sum = %g',S)

//Simpsons 1/3rd Rule
S=0;
for i=1:3
    if(i==1 | i==3)
        S=S+y(i)
    elseif(((i)/2)-fix((i)/2)==0)
        S=S+4*y(i)
    else
        S=S+2*y(i)
    end
end
S=S*h/3
printf('\n\nSimpsons 1/3rd Rule Sum = %g',S)