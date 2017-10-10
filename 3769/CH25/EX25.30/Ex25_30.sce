clear
//Given
m=6.023*10**26
a=235.0
t=30                          //Days
E=200*10**6*1.6*10**-19

//Calculation
N=(2/a)*m
A=N/(t*24*60.0*60.0)
P=E*A

//Result
printf("\n Power output is %0.1f  Mev",P*10**-6)
