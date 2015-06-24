clc
// given data
w=0.6 // in km 
h2=2.5 // in km
p=5/100.0 // porosity
rhor=3000.0 // density of sediment in kg/m^3
cr=750.0 // specific heat of sediment in J/kg-K
rhow=1000.0 // density of water in kg/m^3
cw=4200.0 // specific heat of water in J/kg-K
G=35.0 // temperature gradient in degree C/km
T1=45.0 // temp 1 in degree celsius
T0=12.0 // temp 2 in degree celsius
Q=0.75 // water extraction rate in m^3/sec-km^2
T2=T0+G*h2 // initial temp in degree celsius
t=25 // time in years
thetao=T2-T1 // in degree celsius

E0byA=(p*rhow*(1000**3)*cw+(1-p)*rhor*(1000**3)*cr)*w*thetao // in J/km^2

tau=((p*rhow*cw+(1-p)*rhor*cr)*w*1000**3/(Q*rhow*cw)) // in seconds
Pperkm2=(E0byA)/(tau*1000000) // initial power per square km in MW/km^2
printf("initial power per square km is %.2f MW/km^2",Pperkm2)
Power20=Pperkm2*exp(-25*60*60*24*365/tau) //  power per square km in MW/km^2 after 25 years
printf("\n power per square km in MW/km^2 after 25 years is %.2f MW/km^2",Power20)

// The answers are slightly different due to error in textbook
