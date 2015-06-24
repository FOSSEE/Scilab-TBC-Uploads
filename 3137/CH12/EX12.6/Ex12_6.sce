//Initilization of variables
v_o=2 //m/s
y_o=120 //m
g=9.8 //m/s^2
//Calculations
//Solve  using ground as datum
y=0
//Simplfying the equation
a=4.9
b=-2
c=-120
q=sqrt(b^2-4*a*c)
x1=(-b+q)/(2*a) //s
x2=(-b-q)/(2*a) //s
//Result
clc
printf('The time required is %f s',x1)
//As x2 is negative and negative time does not make any physical sense
