clc
//initialisation of variables
n=200//rpm
N=1.5//hp
d=400//mm
f=0.15//mm
n2=1000//rpm
m1=71620//mm
p=1074.3//kg-cm
d1=40//kg
q=8/2//kg
//CALCULATIONS
D=d*(n/n2)//mm
M1=m1*(N/n)//kg-cm
P=p/d1//kg
Q=P/f//kg
M2=P*q//kg-cm
M3=M1/5//kg-cm
M=m1*(N/n2)//kg-cm
//RESULTS
printf('the diameter an the torque=% f kg-cm',M)
