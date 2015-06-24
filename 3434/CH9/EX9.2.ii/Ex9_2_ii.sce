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

tau=((p*rhow*cw+(1-p)*rhor*cr)*w*1000**3/(Q*rhow*cw))/(60*60*24*365) // in years

printf( "Time constant is %.1f years",tau)

// the answer is different in textbook due to wrong calculations
