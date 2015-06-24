clc
//Initialization of variables
T2=546.6 //R
T1=520 //R
T3=560 //R
v2=1389.2
v1=186.2
R0=1.986
c1=5.02
c2=4.97
n1=1
n2=2
v3=1203
//calculations
ds1=n1*c1*log(T2/T1) + n1*R0*log(v2/v1)
ds2=n2*c2*log(T2/T3)+n2*R0*log(v2/v3)
ds=ds1+ds2
//results
printf("Net change in entropy = %.3f Btu/R",ds)
//The answer is a bit different due to rounding off error in the textbook
