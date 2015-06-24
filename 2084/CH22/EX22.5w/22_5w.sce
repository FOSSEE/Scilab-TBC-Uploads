//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 22.5w
//calculation of the luminous flux emitted into a cone of given solid angle 

//given data
I0=160//luminous intensity(in candela) of small plane source
deltaw=0.02//solid angle(in sr)
theta=60//angle(in degree) made by the centre line of the cone with the forward normal

//calculation
I=I0*cosd(theta)//by using Lambert's cosine law
deltaF=I*deltaw//luminous flux

printf('the luminous flux emitted into a cone of solid angle 0.02 sr around a line making an angle of 60 degree with the forward normal is %3.1f lumen',deltaF)
