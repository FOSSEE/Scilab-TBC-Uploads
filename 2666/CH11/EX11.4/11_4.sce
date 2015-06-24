clc
//initialisation of variables
h=300//cu ft
p1=14.2//psia
p2=150//psia
w1=74//percent
w2=88//percent
q=33000//ft
g=144//ft
t1=0.74//ft
t2=0.88//ft
//CALCULATIONS
I=(-g)*p1*h*log(p2/p1)/q//hp
P1=I/t1//hp
P2=P1/t2//hp
//RESULTS
printf('the isothermal horsepower=% f hp',P2)
