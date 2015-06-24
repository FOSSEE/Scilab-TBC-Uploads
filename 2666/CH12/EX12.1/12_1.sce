clc
//initialisation of variables
p=5//tons
t1=20//F
t2=60//F
p1=147//psia
t=460//F
h=14.7//ft
q=0.4/1.4//ft
w1=200//ft
h1=480//R
m=0.24//ft
t3=520//R
q1=42.4//tons
s=53.3//ft
g=144//ft
//CALCULATIONS
T=(t1+t)*(p1/h)^q//R
T1=(t2+t)/(p1/h)^q//R
W=p*(w1)/((m)*(h1-T1))//lb per min
Q=W*m*(T-t3)//Btu per min
J=Q-p*w1//Btu per min
H1=J/q1//hp
C=p*w1/J//hp
V=(W*s*h1)/(g*h)//cu ft per min
V1=(W*s*T1)/(g*h)//cu ft per min
//RESULTS
printf('The air cooler is=% f Btu per min',Q)
printf('the net horsepower=% f hp',C)
printf('the air after is volume is=% f hp',V1)
