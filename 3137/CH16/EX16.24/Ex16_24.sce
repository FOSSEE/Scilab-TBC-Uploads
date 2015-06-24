//Initilization of variables
m_abc=20 //kg
m_cd=10 //kg
l_abc=3 //m
l_cd=2 //m
x=0.75 //m
y=1.5 //m
theta=60 //degrees
F=1000 //N
g=9.8 //m/s^2
//Simplfying constants
a=26
b=28.3
c=49
//Calculations
//After the rigorous simplification we arrive at the following
//Bx=26*alpha
//By=49-28.3*alpha
//Summing moments about A
alpha=(m_abc*g*x+F*y+c)/((1/3)*m_abc*l_abc^2+a*tand(theta)+b) //rad/s
//Result
clc
printf('The value of angular acceleration is: %frad/s^2',alpha)
