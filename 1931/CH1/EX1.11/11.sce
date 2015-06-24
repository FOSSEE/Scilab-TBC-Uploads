clc
clear
//INPUT DATA
V=12000//volume of auditorium in m^3
T=1.5//The reverberation time of the auditorium in sec
a=0.4//average absorption coefficient in sabine

//CALCULTION
S=(0.167*V)/(a*T)//area of interior surfaces in m^2

//OUTPUT
printf('The area of interior surfaces is %i m^2',S)
