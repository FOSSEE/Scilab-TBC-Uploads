//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.3w
//calculation of the frequency,wavelength,speed,maximum and minimum pressures of the sound wave

//given data
//equation of the sound wave is
//p = (0.01 N/m^2)*sin((1000 s^-1)*t - (3.0 m^-1)*x)............(1)
peq=1.0*10^5//equilibrium pressure(in N/m^2) of the air

//calculation
//comparing equation (1) with standard equation p = p0*sin(w*(t-(x/v)))...we get
w=1000//value of w(in s^-1)
nu=w/(2*%pi)//frequency
v=w/3//velocity
lambda=v/nu//wavelength
p0=0.01//pressure amplitude(in N/m^2)

printf('the frequency is %d Hz',nu)
printf('\nthe wavelength is %3.1f m',lambda)
printf('\nthe speed of the sound wave is %d m/s',v)
printf('\nthe maximum pressure amplitude is (%3.2e + %3.2f) N/m^2',peq,p0)
printf('\nthe minimum pressure amplitude is (%3.2e - %3.2f) N/m^2',peq,p0)
