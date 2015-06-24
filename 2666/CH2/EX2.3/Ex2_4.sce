
clc
//initialisation of variables
t=2940//F
p1=600//psia
p2=70//psia
c=1.28//ft
t2=3400//F
p=8.571//F
q=1.600//F
//CALCULATIONS
T=(p1/p2)^(1.28-1/1.28)//ft
T1=(t2/p)^0.2188//ft
T2=t2/q//R
//RESULTS
printf('The temperature at point=% f R',T2)
