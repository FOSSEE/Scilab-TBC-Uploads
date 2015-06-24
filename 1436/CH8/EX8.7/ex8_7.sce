//Example 8.7, page no-510
clear
clc
T=[98.5 99 99.5 100 100.5 101 101.5]
f=[4 13 19 35 17 10 2]
//(i)
k=0
a=0
for i=1:length(T)
k=k+(T(i)*f(i))
a=a+f(i)
end
x_bar=k/a
printf("(i)\nArithmatic Mean x_bar = %.2f°C",x_bar)

//(ii)
m=0
n=0
for i=1:length(T)
x=(T(i)-x_bar)
if x<0 then
x=-x
end
m=m+(x*f(i))
n=n+f(i)
end
D=m/a
printf("\n(ii)\nAverage Deviation D = %.4f°C",D)

//(iii)

m=0
n=0
for i=1:length(T)
x=(T(i)-x_bar)
m=m+(x^2)*f(i)
n=n+f(i)
end
sigma=sqrt(m/n)
printf("\n(iii)\nStandard Deviation (Sigma) = %.3f°C",sigma)

//(iv)
v=sigma^2
printf("\n(iv)\nVariancce= %.4f°C",v)

//(v)
err=sigma*0.6745
printf("\n(v)\nProbable error = %.4f°C",err)
