//Example 14.2
//Simpsons 1/3rd Rule
//Page no 442
clc;clear;close;
x(1,1)=0
for i=2:9

    x(1,i)=x(1,1)+(i-1)*10
end
y=[30,31.63,33.44,35.47,37.75,40.33,43.29,46.69,50.67]

//trapezoidal rule
S=0;
h=(x(9)-x(1))/8
for j=1:9
    S=0;
    for i=1:j
        if(i==1 | i==j)
            S=S+y(i)
        else
            S=S+2*y(i)
        end
    end
    S=S*h/2
    printf('\n Velocity at t (%i) = %.2f',x(j),S)
    y1(j)=S
end

y1(1)=0;
//Simpsons 1/3rd Rule
S=0;
h=(x(9)-x(1))/8
for i=1:9
    if(i==1 | i==9)
        S=S+y1(i)
    elseif(((i)/2)-fix((i)/2)==0)
        S=S+4*y1(i)
    else
        S=S+2*y1(i)
    end
end
S=S*h/3;
S=S/1000
printf('\n\nSimpsons 1/3rd Rule Sum = %g km',S)