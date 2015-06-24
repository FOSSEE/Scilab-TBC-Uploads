//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 20.3w
//calculation of the refracting angles of the two prisms

//given data
w=0.03//dispersive power of crown glass
wdash=0.05//dispersive power of flint glass
delta=1//deviation(in degree) produced
mu=1.517//refractive index for crown glass
mudash=1.621//refractive index for flint glass

//calculation
//w = (muv - mur)/(mu - 1)........dispersive power
//(muv - mur)*A = (mu-1)*w*A......angular dispersion
m=((mu-1)/(mudash-1))*(w/wdash)
//Adash = A*m........(1)
//net deviation produced is delta
A=delta/((mu-1)-((mudash-1)*m))//refracting angle of crown glass
Adash=A*m//refracting angle of flint glass

printf('the refracting angle of the crown prism is %3.1f degree',A)
printf('\nthe refracting angle of the flint prism is %3.1f degree',Adash)
