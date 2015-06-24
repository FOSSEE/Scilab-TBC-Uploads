clc
clear
//Input data
D=[8.25,11.5]//Dimensions of four cylinder in 8.25 cm* 11.5 cm
n=4//Four cylinder
N=3000//Speed in r.p.m
v=150//Venturi depression in cm of water
nv=80//Volumetric efficiency of the engine in percent
af=14//Air fuel ratio
Ca=0.84//Coefficient of air flow
Cf=0.7//Coefficient of fuel orifice 
da=1.29//Density of air in kg/m^3
df=700//Density of fuel in kg/m^3
dw=1000//Density of water in kg/m^3

//Calculations
Va=((3.14/4)*(D(1)/100)^2*(D(2)/100)*n*(nv/100)*(N/(2*60)))//Maximum amount of air passing through the venturi in m^3
vd=(v/100)*dw//Venturi depression in kg/m^2
va=(Ca*sqrt((2*9.81*vd)/da))//Velocity of air in m/s
d=sqrt((Va/va)*(4/3.14))//Throat diameter of venturi in m
Af=1/(af*(va/Va)*sqrt(df/da)*(Cf/Ca))//Area of orifice in m^2
df=sqrt((Af*4)/3.14)*1000//Diameter of orifice in mm

//Output
printf('The size of venturi is %i kg/m^2 \n The diameter of fuel orifice is %3.2f mm',vd,df)
