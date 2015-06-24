//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.1
//calculation of the audibility of a wave 

//given data
v=300//velocity(in m/s) of the wave
lambda=.60*10^-2//wavelength(in m) of the wave

//calculation
nu=v/lambda//frequency of the wave
if(nu<20)
    printf('the wave is not audible')
elseif(nu>20000)
    printf('the wave is not audible')
else
    printf('the wave is audible')
end
