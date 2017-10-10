clc
// given data
G=39.0 // temperature gradient in K/km.
h2=10.0 // depth in km
rhow = 1000;
rhor=2700.0 // kg/m^3
cr=820.0 // in J/kg-K
cw=4200.0; // specific heat of water in J/kg-K 
QbyA=0.5;
h1=120/G // T1-T0=120 K is given
h21=h2-h1 // in km
E0byA=(rhor*(1000**3)*G*cr*h21**2)/2 // in J/km^2 Heat content per square km
t=25 // time in years
thetao=G*h21/2.0 // in degree K
tau=rhor*cr*h21*(1000**3)/(QbyA*rhow*cw) // in seconds
tau=tau/(2*60*60*24*365) // in years
theta=thetao*exp(-t/tau) // in degree Kelvin

Heatinitial=E0byA/(60*60*365*24*tau)/1000000 // intial heat extraction rate in MW /km^2

Heat25=Heatinitial*exp(-t/tau) // heat extraction rate after 25 years in MW /km^2

printf( "Initial Heat extraction rate is %.2f MW/km^2",Heatinitial)

printf(" \n Final Heat extraction rate is %.2f MW/km^2",Heat25)