clc
// given data
G=39.0 // temperature gradient in K/km.
h2=10.0 // depth in km
rhor=2700.0 // kg/m^3
cr=820.0 // in J/kg-K
QbyA=0.5 //water flow rate in  m^3/sec-km^2 
rhow=1000.0 // density of water in kg/m^3
cw=4200.0 // specific heat of water in J/kg-K 
h1=120.0/G // T1-T0=120 K is given
h21=h2-h1 // in km
t=25 // time in years

thtao=G*h21/2.0 // in degree K
printf( "Useful initial temp  is %.2f degree K",thtao)
tau=rhor*cr*h21*(1000**3)/(QbyA*rhow*cw) // in seconds
tau=tau/(2*60*60*24*365) // in years
thta=thtao*exp(-t/tau) // in degree Kelvin
printf( " \n Useful average temp after 25 years is %.2f degree K",thta)
