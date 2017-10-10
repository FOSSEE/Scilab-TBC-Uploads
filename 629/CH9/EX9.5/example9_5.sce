clear
clc
//Example 9.5 TURBULENT BOUNDARY-LAYER PROPERTIES
to=0.896; //[lbf/ft^3]
rho=1.94; //[slugs/ft^3]
uo=sqrt(to/rho) //shear velocity [ft/s]

//Logarithmic velocity distribution
y=0.0088; //[ft]
v=1.22*10^-5; //[ft^2/s]
uL=uo*(2.44*log(y*uo/v)+5.56) //velocity of water [ft/s]

delta=0.088; //[ft]
yn=y/delta //non-dimensional distance

//velocity defect law
//(Uo-u)/uo=8.2, from fig 9.11
Uo=20; //[ft/s]
ud=Uo-8.2*uo //velocity [ft/s]

//Power-law formula
up=Uo*yn^(1/7) //velocity [ft/s]
printf("\nThe velocity of water as determined by\n(a)Logarithmic velocity distribution = %.1f ft.\n(b)Velocity defect law               = %.1f ft.\n(c)Power-law formula                 = %.2f ft.\n\n",uL,ud,up)

deltaN=(11.84*v/uo)*12*10^3 //nominal thickness in 10^-3 inches
printf("\nThe nominal thickness of the viscous sublayer = %.2f*10^(-3) inches.\n",deltaN)