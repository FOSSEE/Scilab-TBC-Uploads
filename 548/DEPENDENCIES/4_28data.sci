//In this example flow over the wing is both turbulent and laminar.so to find drag we need to find drag on both laminar and turbulent layer and add them.
b=12.202;//wing span in meter
S=23.69;//wing area in m^2
c=S/b //wing width
Ret=6.5*10^5;//transition reynolds number or critical reynolds number
D=1.225;//density at standard sea level,Kg/m^3
u=1.79*10^-5;//Viscosity in at standard sea level in kg/(m)(s)
V=48.3*5/18 //velocity of flyer
q=D*V^2/2 //dynamic pressure
Re=D*V*c/u //reynolds no. at trailing edge
Xcr=(Ret*u)/(D*V) //distance from leading edge where transition occur
A=Xcr*b //area over which laminar flow occur in m^2
B=(c-Xcr)*b //area over which turbulent flow occur in m^2


