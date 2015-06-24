tA=280;//time of flow for liquid A in seconds//
tB=200;//time of flow for liquid B in seconds//
pA=1;//density of liquid A in gram per cm^3//
pB=1.1;//density of liquid B in gram per cm^3//
h=10;//height of liquid responsible for the flow in cm//
g=980;//gravity constant in dyns//
V=1;//volume of liquid in ml//
L=10;//length of the capillary in cm//
r=0.1;//radius of the capillary in cm//
PA=h*pA*g;//Pressure of liquid A//
PB=h*pB*g;//Pressure of liquid B//
nA=(%pi*PA*tA*r^4)/(8*L*V);//Viscosity of Liquid A in centipoise//
printf('\nViscosity of Liquid A=nA=%fcentipoise',nA);
nB=(%pi*PB*tB*r^4)/(8*L*V);//Viscosity of Liquid B in centipoise//
printf('\nViscosity of Liquid B=nB=%fcentipoise',nB);
