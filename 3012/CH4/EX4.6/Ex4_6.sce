// Given:-
// At Entry:=
t1=20.0                                          // Temperatue in deg celcius
p1=1.0                                           // pressure in atm
AV1= 0.1                                         // volumetric flow rate in litre/s
D1=2.5                                           // Diameter of th hose in cm

// At Exit:=
t2=23.0                                          // temperatuer in deg celcius
p2=1.0                                           // pressure in atm
V2=50.0                                          // Velocity in m/s
Z2=5.0                                           // elevation in m
g= 9.8                                           // acceleration due to gravity in m/s^2

// from table A-2 and A-19:-

v= (1.0018)*((10.0)**(-3))                       // specific volume in m^3/kg
c= 4.18 

// Calculation:-
mdot = (AV1/1000)/v                              // mass flow rate in kg/s
V1= (AV1/1000)/(3.14*(D1/(2*100))**2)            // Entry velocity in m/s
deltah = c*(t2-t1)+v*(p2-p1)
Wcvdot= ((mdot*10)/9)*(-deltah+(V1**2-V2**2)/(2*1000)+g*(0-Z2)/1000)

// Results:-
printf( ' The power input to the motor is %.2f kw',Wcvdot)
