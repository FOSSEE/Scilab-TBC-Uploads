//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.3
//calculation of the intensity of the sound wave

//given data
p0=2*10^-2//pressure amplitue(in N/m^2)
p0dash=2.5*10^-2//new pressure amplitue(in N/m^2)
I=5.0*10^-7//intensity(in W/m^2) of the wave 

//calculation
//intensity of the wave is proportional to square of the pressure amplituide
Idash=I*((p0dash/p0)^2)

printf('the intensity of the sound wave is %3.1e W/m^2',Idash)
