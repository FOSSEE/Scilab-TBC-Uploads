clc
//initialisation of variables
p=5000//psia
t=1200//F
w=3206.2//psia
t1=460//R
h=705.4//ft
q=0.84//ft
g=1545//ft
h1=(1/18)//ft
//CALCULATIONS
P=p/w//cu ft
R=(t+t1)/(h+t1)//ft
V=q*(h1)*g*(t+t1)/(144*p)//cu ft
//RESULTS
printf('the result with the steam table value=% f cu ft',V)
