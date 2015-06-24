//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.1w
//calculation of the amplitude,wavelength,frequency,speed of the wave

//given data
//given wave equation is.....y = (3.0cm)*sin(6.28(.50*x - 50*t))

//calculation
//comparing with standard equation of wave....y = A*sin*2*%pi*((x/lambda) - (t/T)),we get
A=3//amplitude(in cm)
lambda=(1/0.50)//wavelength(in cm)
T=1/50//time period(in s)
nu=1/T//frequency(in Hz)
v=nu*lambda//wave velocity(in cm s^-1)

printf('the amplitude is %d cm',A)
printf('\nthe wavelength is %d cm',lambda)
printf('\nthe frequency is %d Hz',nu)
printf('\nthe wave velocity is %d cm/s',v)
