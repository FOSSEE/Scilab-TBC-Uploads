
clear//

//Variable Declaration
D=250 //Wideness in mm
b=20 //Thickness of the plate in mm
r=50 //Radius  of the hole in mm
e=50 //Eccentricity in mm
sigma_max=150 //Maximum normal stress at the hole in MPa
kb=2 //Stress Concentraion factor 

//Calculations
A=b*(D-2*r)*10**-6 //Area in m^2
I=10**-12*(b*D**3*12**-1-(b*2**3*r**3*12**-1)) //Moment of inertia in m^4
//Simplfying computation
a=2*r*D**-1
kt=3-3.13*a+3.66*a**2-1.53*a**3 //Stress Concentration factor
//Simplfying computation
b=kt*A**-1
c=kb*r*r*10**-6*I**-1
P=10**3*sigma_max*(b+c)**-1 //Maximum Load in N

//Result
printf("\n The maximum value of P is %0.1f kN",P)
