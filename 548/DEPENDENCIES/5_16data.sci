S=206;//wing area in m^2
AR=10;//aspect ratio
e=0.95;//span efficiency factor
W=7.5*10^5;//weight of the airplane in newton
Hd=3;//density altitude in Km
D=0.909;//density at density altitude of 3 Km(Kg/m^3)
V=100;//flight velocity(m/s)
//lift is equivalent to weight,so
Cl=W/((D*V^2/2)*S)//lift coefficient
Cdi=Cl^2/(%pi*e*AR) //induced drag coefficient
Cd=0.006;//profile drag coefficient from estimated from aerodynamic data
q=(D*V^2/2)
