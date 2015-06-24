//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 20.1w
//calculation of the angular dispersion produced by a thin prism of the flint glass

//given data

mur=1.613//refractive index of flint glass for the red light
muv=1.632//refractive index of flint glass for the violet light
A=5//refracting angle(in degree)

//calculation
delta=(muv-mur)*A//angular dispersion

printf('the angular dispersion produced by the thin prism of the flint glass is %3.3f degree',delta)
