clc
//solution
// initialization of variables
//DATA TAKEN FROM PSYCHROMETRIC CHART
T1=5+273 // outside temperature in kelvin
h1=10// enthalpy in kJ/kg @ T=5 *C and 40 % relative humidity
Pg1=0.872 // saturaion pressure in kPa for 5 degree celsius DBT
phi1=0.4
h2=33 // specific enthalpy at 25 *C and 40 % relatuve humidity
h3=45 // specific enthalpy at state 3
P=100 // atmospheric pressure in kPa
Ra=0.287 // specific gas constant for air
Qf=60/60 // volume flow rate in m^3/s
Pv1=phi1*Pg1 // partial presure of water vapour 
Pa1=P-Pv1 // partial pressure of air
w2=0.0021 // specific humidity @ 40 % relative humidity and 25*C temperature
w3=0.008 // final specific humidity
rhoa1=Pa1/(Ra*T1) // air density
mdota=Qf*rhoa1 // mass flow rate of dry air

Qdot=mdota*(h2-h1) // heat transfer rate

// as the process is isothermal thus
mdots=mdota*(w3-w2)// mass flow rate of steam by conservation of mass
printf("the rate of steam supplied is %0.4f kg/s \n",mdots)
// also using energy balance
hs=(mdota*(h3-h2))/mdots // enthalpy of steam
hf=604.7 // enthalpy of saturated liquid @ 400 kPa
hg=2738.5 // enthalpy of saturated vapour @ 400 kPa
xs=(hs-hf)/(hg-hf)
printf("The quality of steam is %0.2f ",xs)





