// problem 7.17
n=1
Q=14
i=1/1000
C=44
a=1.828
d=((Q*(2^0.5))/(C*a*(i^0.5)))^0.4
b=d*0.828
cost=(b+n*d)*4
A=1.828*d*d
C1=70
d1=((Q*(2^0.5))/(C1*a*(i^0.5)))^0.4
b1=0.828*d1
cost1=(b1+n*d1)*4
costl=(b1+(2*d1*((n*n+1)^0.5)))
totalcost= cost1+costl
disp(d1,b1,"lined channel is cheaper ,dimension in m")
