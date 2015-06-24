//Initilization of variables
m=20 //kg
g=9.8 //m/s^2
vo=3 //m/s
v=0 //m/s
s=4 //m
//Calculations
//Using equations of motion
Na=m*g //N
F=(Na*0.075)/0.125 //N
a=F/m //m/s^2
//Displacement 
d=-(v^2-vo^2)/(2*a) //m
displ=s-d //m
v_f=sqrt(2*a*displ) //m/s
//Result
clc
printf('The final velocity is %f m/s',v_f)
