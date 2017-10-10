//kinetic energy and velocity
clc
//initialisation of variables
p=50//ft/s
w=10//lbf
v=30//ft/s
w1=40//lbf
v1=20//ft/s
g=32.2//ft/s\
h=0.8//ft/s
V1=23.6//ft/s
V3=15.6//ft/s
V4=22//ft/s
//CALCULATIONS
V=(w+w1)/g/(w/g*v)+(w1/g*v1)//ft/s
V2=h*(-v1+v)//ft/s
K=(w*(v^2))/(2*g)+(w1*(v1^2))/(2*g)-(p*(V1^2))/(2*g)//ft /bf
K1=((w*(v^2))/(2*g))+((w1*(v1^2))/(2*g))-((w*(V3^2))/(2*g))-((w1*(V1^2))/(2*g))//ft lbf
//RESULTS
printf('the velocity of two bodies after impact is=% f ft/s',V4)
printf('final velocity is=% f ft/s',V2)
printf('Loss of kinetic energy at impact is=% f ft lbf',K1)
