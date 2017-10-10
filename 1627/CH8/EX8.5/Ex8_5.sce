clc
//initialisation of variables
w=0.05//m^3/s
p=1000//N.s^2/m^4
v=25//m/s
a=135//deg
v1=30//m/s
b=55//deg
//CALCULATIONS
Fx=(p*w)*[(v)*-cosd(a)-v1]//N
Fy=(p*w)*(v*-cosd(a))//N
FR=sqrt((Fx)^2+(Fy)^2)//N
F=-(Fy/Fx)
F1=tand(b)//deg
//RESULTS
printf('The angle of the resultant force on the vane=% f deg',F1)
