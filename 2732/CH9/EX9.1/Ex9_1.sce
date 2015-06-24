clc
//initialization of variables
clear
//case (a)
A=72.9 //cm^2
Iy=633 //cm^4
Ix=1199 //cm^4
t=24/(5*Ix)+13.5/(5*Iy)
r=1/(A*t)
printf('case (a) \n r = %.3f cm',r)
// case (b)
t=24/(5*Ix)-13.5/(5*Iy)
r=1/(A*t)
printf('\n case (b) \n r = %.1f cm',r)
//case (c)
t=-24/(5*Ix)+13.5/(5*Iy)
r=1/(A*t)
printf('\n case (a) \n r = %.1f cm',r)
printf('\n So the load is to be placed on the leg OD, at a distance of %.1f cm from O',r )

