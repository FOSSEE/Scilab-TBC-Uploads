//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.5
//calculation of the nature of interference

//given data
nu=1*10^3//frequency(in Hz) of the source
deltax=83*10^-2//difference in the length(in m) of paths
v=332//speed(in m/s) of the sound in air

//calculation
lambda=v/nu//wavelength
delta=(2*%pi/lambda)*deltax
n=delta/%pi//phase difference is 'n' multiple of pi
if(modulo(n,2)==0)
    printf('the waves will interfere constructively.')//for even values of 'n'
else
    printf('the waves will interfere destructively.')//for odd values of 'n'
end
