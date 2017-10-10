clear
//Given
h=6.6*10**-34
c=3*10**8
w0=2.39*1.6*10**-19
f1=4000.0                      //A
f2=6000                      //A
m=9.1*10**-31
e=1.9*10**-19
d=0.1

//Calculation
//
l=(h*c)/w0
K=(12400/f1)-2.39
vmax=sqrt((2*K*1.6*10**-19)/m)
B=(m*vmax)/(e*d)

//Result
printf("\n Maximum value of B is %0.2f *10**-5 T",B*10**5)
