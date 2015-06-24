//Example 8.11
//Integration by Various Methods
//Page no 276
clc;clear;close;
deff('y=f(x)','y=1/(1+x^2)')
a=0;b=1;
S=0;h=1/4;
n=(b-a)/h+1
for i=1:n
    x(i)=(i-1)*h
    y(i)=f(x(i))
end
c=['x','f(x)']
for i=1:2
    printf('\n%s :\t ',c(i))
    for j=1:n
        if i==1 then
            printf('%g\t',x(j))
        else
            printf('%.4g\t',y(j))
        end
    end
end

//trapezoidal rule
for i=1:n
        if(i==1 | i==n)
            S=S+y(i)
        else
            S=S+2*y(i)
        end
    end
    S=S*h/2
    printf('\n\n By Trapezoidal Method, I = %.4f',S)
//Simpsons 1/3rd Rule
S=0;
for i=1:n
    if(i==1 | i==n)
        S=S+y(i)
    elseif(((i)/2)-fix((i)/2)==0)
        S=S+4*y(i)
    else
        S=S+2*y(i)
    end
end
S=S*h/3;
printf('\n\n By Simpsons 1/3rd Rule, I = %.4g \n\n\n',S)

S=0;h=1/6;
n=(b-a)/h+1
for i=1:n
    x(i)=(i-1)*h
    y(i)=f(x(i))
end
for i=1:2
    printf('\n%s :\t ',c(i))
    for j=1:n
        if i==1 then
            printf('%.4g\t',x(j))
        else
            printf('%.4g\t',y(j))
        end
    end
end
//Simpsons 3/8 rule
for i=1:n
        if(i==1 | i==n)
            S=S+y(i)
        elseif i~=(n+1)/2
            S=S+3*y(i)
        else
            S=S+2*y(i)
        end
    end
    S=S*3*h/8
    printf('\n\n By Simpsons 3/8 rule, I = %.5f',S)
    
//Weddle's Rule
S=0;
for i=1:n
    if i==(n+1)/2
        S=S+6*y(i)
    elseif(((i)/2)-fix((i)/2)~=0)
        S=S+y(i)
    else
        S=S+5*y(i)
    end
end
S=S*3*h/10;
printf('\n\n By Weddles Rule, I = %.5f ',S)