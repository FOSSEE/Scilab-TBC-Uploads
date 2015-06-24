//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 20.2
//calculation of the dispersive power of the material of the lens

//given data
fr=90//focal length(in cm) for the red light
fv=86.4//focal length(in cm) for the violet light

//calculation
//(1/f) = (mu-1) * ((1/R1) - (1/R2))
//muv - 1 =K/fv.....and.....mur - 1 = K/fr
//let m = muv - mur and K = 1
m=((1/fv)-(1/fr))
//muy - 1 = ((muv + mur)/2) - 1 = (K/2)*((1/fv) - (1/fr))
//let n = muy -1 and K = 1
n=(1/2)*((1/fv)+(1/fr))
//w = (muv-mur)/(mu-1).........definition of the dispersive power
w=m/n

printf('the dispersive power of the material of the lens is %3.3f',w)
