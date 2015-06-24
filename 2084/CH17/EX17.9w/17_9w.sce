//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.9w
//calculation of the number of fringes that will shift due to introduction of the sheet

//given data
lambda=600*10^-9//wavelength(in m) of the light used
t=1.8*10^-5//thickness(in m) of the transparent sheet
mu=1.6//refractive index of the material

//calculation
n=((mu-1)*t)/lambda//number of fringes shifted

printf('the number of fringes that will shift due to introduction of the sheet is %d',n)
