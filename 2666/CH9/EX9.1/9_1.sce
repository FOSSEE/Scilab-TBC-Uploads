clc
//initialisation of variables
v=447.6//ft per sec
p1=50//psia
t=150//F
p2=30//psia
t1=50//F
a=100//lb per sec
h=0.24//T
q=510//in
w=50000//in
g=1020//ft per sec
d=53.3//ft
t2=580//ft
//CALCULATIONS
V1=(d*(t2))/(t1*(144))//cu ft per lb
V2=(d*(q))/(p2*(144))//cu ft per lb
A=(sqrt(v/V1)/a)/100*(95)*10//sq ft
A1=sqrt(g/V2)/a/2*10//sq ft
//RESULTS
printf('the velocity at cross sectional area at point=% f sq ft',A1)
