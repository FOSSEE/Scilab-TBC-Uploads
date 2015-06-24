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

thetao=T2-T1 // in degree celsius

E0byA=(p*rhow*(1000**3)*cw+(1-p)*rhor*(1000**3)*cr)*w*thetao // in J/km^2

printf( "The heat content is %.2e J/km^2",E0byA)

// the answer is different in textbook due to wrong thetao
