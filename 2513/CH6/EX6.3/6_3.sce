clc
//initialisation of variables
t=47//f
q=8000//ft
a=100//ft
d=0.10//in
d1=7//degree days
s1=14000//ft
s2=7000//ft
s=1000//ft
g=32//ft
h=17.37//ft
h1=1.547//ft
//CALCULATIONS
T=q+s*(t-g)/3//ft
T1=t-3*1//F
T2=(T1+g)/2//F
T3=d1*d*a//sq mile in
M=h*T3//mgd
M1=M*h1//cfs
//RESULTS
printf('the upper boundary of the melting zone and temperature at the snow line=% f F',T1)
printf('The average temperature of =% f cfs',M1)
