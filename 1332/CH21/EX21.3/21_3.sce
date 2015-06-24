//Example 21.3
//Trapezoidal Rule and Simpsons Rule in Parallel Computing
//Page no. 726
clc;close;clear;
n=8;a=0;b=8;
h=(b-a)/n
deff('y=f(x)','y=1/(1+x)')
for i=0:8
    x(i+1)=i;
    y(i+1)=f(x(i+1))
end
printf('xi\t ')
for i=1:9
    printf('%i\t ',x(i))
end
printf('\n yi\t')
for i=1:9
    printf('1/%i\t',i)
end

//trapezoidal rule
S=0;
for i=1:9
    if(i==1 | i==9)
        S=S+y(i)
    else
        S=S+2*y(i)
    end
end
S=S*h/2
printf('\n\nTrapezoidal Rule Sum = %g',S)

//Simpsons 1/3rd Rule
S=0;
for i=1:9
    if(i==1 | i==9)
        S=S+y(i)
    elseif(((i)/2)-fix((i)/2)==0)
        S=S+4*y(i)
    else
        S=S+2*y(i)
    end
end
S=S*h/3
printf('\n\nSimpsons 1/3rd Rule Sum = %g',S)