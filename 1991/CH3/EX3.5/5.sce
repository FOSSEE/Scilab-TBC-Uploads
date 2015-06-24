clc
clear
//input data
amp=3.4*10^-5 //amplitude of the wave
af=5.7*10^2 //angular frequency
k=20 //wavenumber
//calculation
//wave frequency
f=af/(2*%pi)
l=(2*%pi)/k
v=f*l
printf("the wave frequency is %3.3f and the speed is %3.3f  m/s",f,v)
//calculating greatest speed for the wave to pass through
vmax=af*amp //greatest speed
//output
printf("\nthe greatest value of speed for the wave to pass through is %3.3f m/s",vmax)
