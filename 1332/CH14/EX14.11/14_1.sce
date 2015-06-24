//Example 14.1
//Trapezoidal Rule
//Page no 440
clc;clear;close;
x1=1.46
for i=1:6
    x(1,i)=x1+i/100
end
y=[3.86,3.90,3.96,4.02,4.06,4.12]

//trapezoidal rule
S=0;
h=(x(6)-x1)/6
for i=1:6
    if(i==1 | i==6)
        S=S+y(i)
    else
        S=S+2*y(i)
    end
end
S=S*h/2
printf('\n I = %g',S)