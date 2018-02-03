clear
//Given
//Variable declaration
b=120          //Width in mm
d=200          //Depth in mm
L_star=2.5     //Length in m
L=2.5*1000     //Length in mm
yB=5           //Deflection at free end in mm
E=2e5          //Youngs modulus in N/sq.mm

//Calculation
I=(b*d**3)/12                        //Moment of Inertia in mm^4
w=(yB*8*E*I)/(L**3*L_star)/1e3       //Uniformly distributed load in N/m

//Result
printf("\n Uniformly distributed load = %0.3f  kN/m",w)
