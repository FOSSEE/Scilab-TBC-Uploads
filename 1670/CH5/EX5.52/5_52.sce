//Example 5.52
//Spline Interpolation
//Page no. 205
clc;close;clear;
deff('y=S1(x)','y=18-(75*x)/2+26*x^2-11*x^3/2')
deff('y=S2(x)','y=-70+(189*x)/2-(40*x^2)+(11*x^3)/2')
x=2;h=0.01;
S=[S1(x),S2(x)]
for i=1:2
    printf('\n  S%i (%i) = %g\n',i-1,x,S(i))
end
deff('y=S3(x)','y=(S1(x+h)-S1(x))/h')
deff('y=S4(x)','y=(S2(x+h)-S2(x))/h')
S=[S3(x),S4(x)]
for i=1:2
    printf('\n  S`%i (%i) = %g\n',i-1,x,S(i))
end
deff('y=S5(x)','y=(S3(x+h)-S3(x))/h')
deff('y=S6(x)','y=(S4(x+h)-S4(x))/h')
S=[S5(x),S6(x)]
for i=1:2
    printf('\n  S``%i (%i) = %g\n',i-1,x,S(i))
end
printf('\n\n')
for i=1:2
    for j=1:3
        if i==1 then
            printf('\t%i',j)
        elseif j<3
            printf('\t%g',S1(j))
        else
            printf('\t%g',S2(j))
        end
    end
    printf('\n')
end
x=[1:0.1:2]
plot(x,S1(x))
x=[2:0.1:3]
plot(x,S2(x))