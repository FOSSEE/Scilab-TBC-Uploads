//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 20.1
//calculation of the dispersive power of the flint glass

//given data
mur=1.613//refractive index of flint glass for the red light
mu=1.620//refractive index of flint glass for the yellow light
muv=1.632//refractive index of flint glass for the violet light

//calculation
w=(muv-mur)/(mu-1)//definition of the dispersive power

printf('the dispersive power of the flint glass is %3.4f',w)
