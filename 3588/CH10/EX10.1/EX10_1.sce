//Clearing console
clc
clear

//Intializing variables
mg = 20
k = 25
g = 386.4

//Calculating circular frequency
w = sqrt(k*g/mg)

//Solving for constants in equation of motion
fi = acosd(0/w)
C = (2.3-0.8)/sind(fi)

//Circular frequency in Hz
f = w/(2*%pi)

printf('\nResults\n')
printf('\nCircular Frequency =%fHz\n Amplitude =%fin\n Phase Angle =%fdegree',f,C,fi)
