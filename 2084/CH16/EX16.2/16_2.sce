//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.2
//calculation of the amplitude of vibration of the particles of the medium

//given data
lambda=40*10^-2//wavelength(in m) of the wave
deltap=1*10^-3//difference between the minimum and the maximum pressure(in N/m^2) 
B=1.4*10^5//Bulk modulus(in N/m^2)

//calculation
p0=deltap/2//pressure amplitude
s0=(p0*lambda)/(2*%pi*B)//from equation of Bulk modulus

printf('the amplitude of vibration of the particles of the medium is %3.2e m',s0)
