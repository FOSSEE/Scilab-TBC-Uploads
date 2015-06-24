clc
// given data
a=2.0/2 // in m
T=8.0 // in secs
rho=1025.0 // in kg/m^3
w=2*%pi/T // angular frequency in radian/sec
g=9.8 // gravitational acceleration in m/sec^2

Lamda=2*(%pi)*g/(w**2) // in m
printf( "wavelength is %.2f m",Lamda)
v=g/w // phase velocity in m/s
printf( " \n phase velocity is %.2f m/s",v)
P=rho*(g**2)*(a**2)*T/(8*%pi*1000) // power in wave in kW/m
printf( " \n power in wave is %.2f kW/m",P)
E=P*8.76  // average annual wave energy in mWh/m

printf( "\n average annual wave energy is %.1f mWh/m",E)
