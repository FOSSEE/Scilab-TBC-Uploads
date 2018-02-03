clear
//Given
//Variable declaration
L=5*1000      //Length in mm
L_star=5      //Length in m
w=9           //Uniformly distributed load in kN/m
f=7           //Bending stress in N/sq.mm
E=1e4         //Young's modulus in N/sq.mm
yc=10         //Central deflection in mm

//Calculation
W=w*L_star*1e3                       //Total load in N
bd3=((W*(L**3)*12*5)/(E*yc*384))     //width X depth^3 in mm^4
M=(W*L/8)                            //Maximum bending moment in Nmm
bd2=(M*12/(f*2))              //width X depth^2 in mm^3

d=(bd3/bd2)                   //Depth of beam in mm

b=(M*12/(f*2)/d**2)          //Width of beam in mm

//Result
printf("\n Depth of beam = %0.3f  mm",d)
printf("\n Width of beam = %0.3f  mm",b)
