clc
// given data
G=39.0 // temperature gradient in K/km.
h2=10.0 // depth in km
rhor=2700.0 // kg/m^3
cr=820.0 // in J/kg-K

h1=120/G // T1-T0=120 K is given
h21=h2-h1 // in km
E0byA=(rhor*(1000**3)*G*cr*h21**2)/2 // in J/km^2 Heat content per square km
printf("The Heat content per square km is %.3e J/km^2",E0byA)
