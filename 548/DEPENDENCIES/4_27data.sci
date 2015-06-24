//assume the boundary layer over the wing is turbulent
H=10668 ;//standard altitude at which F-104 is flying in meter
M=2;//Mach No.at which plane is flying 
x=0.6096;//shear stress to be calculated at this distance downstream of leading edge
y=1.4; //specific heat ratio for air
R=287 ;//gas constant,J/Kg.K
//following are the datas at standard altitude of 10668 meter from standard tables
D=0.3807;//density,Kg/m^3
T=218.93;//temperature,Kelvin
V=(y*R*T)^0.5*M //velocity of the plane
u=1.35*10^-5;//viscosity from standard table of variation of u versus T      in kg/(m)(s)
Re=D*V*0.6096/u //reynolds no at 0.6096 meter:
Cfx=0.0592/Re^0.2 //incompressible skin fraction coefficient
//for mach 2 ratio of Cf/Cfx=0.2,so
Cf=0.74*Cfx //skin friction coefficient 
q=D*V^2/2 //dynamic pressure