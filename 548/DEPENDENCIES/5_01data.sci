//A model wing is placed in a low speed subsonic wind tunnel.the wing has a NACA-2412 airfoil.
c=1.3;//chord length in meter
V=50; // velocity of flow in test section(m/s)
a=4;//angle of attack in degree
D=1.225;//standard sea level density,Kg/m^3
u=1.789*10^-5;//Viscosity in kg/(m)(s)
//from standard table for NACA-2412 airfoil with angle of attack 4 degree:
Cl=0.63;//Lift coefficient
Cm=-0.035;//moment coefficient about quarter chord
Re=D*V*c/u //reynold's no. 
//from the value of Re and angle of attack and by using standard table we can get Cd:
Cd=0.007;//coefficient of drag
q=D*V^2/2  //dynamic pressure,N/m^2
