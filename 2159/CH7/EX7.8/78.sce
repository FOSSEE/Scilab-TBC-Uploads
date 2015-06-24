// problem 7.8
b=1.4
d=1.4
n=1/4
i=1/700
N=0.025
a=d*(b+(n*d))
p=b+(2*d*((n*n+1)^0.5))
m=a/p
q=(a*(m^0.6666)*(i^0.5))/N
disp(q*1000,"discharge from the trapezoidal channel in litres/sec")
