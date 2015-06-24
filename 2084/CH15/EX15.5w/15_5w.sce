//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.5w
//calculation of the wavelength of the pulse when it reaches the top of the rope

//given data
lr=12//length(in m) of the rope
mr=6//mass(in kg) of the rope
mb=2//mass(in kg) of the block
lambda=.06//wavelength(in m) of the wave produced at the lower end

//calculation
//from equation .......v = nu*lambda
//putting v = sqrt(F/lambda)....we get
//sqrt(F/lambda) = nu*sqrt(mu)....using this equation,we get
lambda1=lambda*sqrt((mr+mb)/mb)

printf('the wavelength of the pulse when it reaches the top of the rope is %3.2f m',lambda1)
