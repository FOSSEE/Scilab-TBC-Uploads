c=1.524;//chord length of airfoil(meter)
h=6096;//standard altitude(meter)
a=5*%pi/180;//angle of attack in radian
D=0.654;//density at standard altitude of 6096 meter,Kg/m^3
T=248.6;//temperature at standard altitude of 6096 meter in kelvin
R=287 ;//gas constant,J/Kg.K
y=1.4; //specific heat ratio for air
//for part a (mach no 3):
M=3;//Mach no.
q=D*((y*R*T)^0.5*M)^2/2 //dynamic pressure
Cl=4*a/(M^2-1)^0.5//lift coefficient 
Cd=4*a^2/(M^2-1)^0.5//wave drag coefficient 
//for part b(mach no 2):
M1=2;//Mach no.
q1=D*((y*R*T)^0.5*M1)^2/2 //dynamic pressure
Cl1=4*a/(M1^2-1)^0.5//lift coefficient 
Cd1=4*a^2/(M1^2-1)^0.5//wave drag coefficient