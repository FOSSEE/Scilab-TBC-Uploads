clc
//initialization of new variables
clear
u1=8 //m/s
z1=1 //m
g=9.8 //m/s^2
//calculations
Fr1=u1/sqrt(g*z1)
zr=(-1+sqrt(1+8*Fr1^2))/2
z2=z1*zr
u2=u1*z1/z2
Fr2=u2/sqrt(g*z2)
hr=1-zr+u1^2/(2*g*z1)-u2^2/(2*g*z1)
loss=hr*z1/(z1+u1^2/(2*g))
//results
printf('Fr1 = %.3f',Fr1)
printf('\n Fr2 = %.3f',Fr2)
printf('\n percent of loss = %.1f percent',loss*100)
