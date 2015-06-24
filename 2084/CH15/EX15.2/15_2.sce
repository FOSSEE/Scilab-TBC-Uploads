//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.2
//calculation of the amplitude,wave number,wavelength,frequency,time period,wave velocity

//given data
//given equation......y = (5mm)*sin((1cm^-1)*x - (60 s^-1)*t)
w=60//angular frequency

//calculation
A=5//amplitude(in cm)
k=1//wave number(in cm^-1)
lambda=(2*%pi)/k//wavelength(in cm)
nu=w/(2*%pi)//frequency(in Hz)
T=1/nu//Time period(in s)
v=nu*lambda//wave velocity(in cm/s)

printf('the amplitude is %d mm',A)
printf('\nthe wave number is %d cm^-1',k)
printf('\nthe wavelength is %3.2f cm',lambda)
printf('\nthe frequency is %3.2f Hz',nu)
printf('\nthe time period is %3.2f s',T)
printf('\nthe wave velocity is %d cm/s',v)
