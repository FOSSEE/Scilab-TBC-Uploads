clear
//Given
//Variable declaration
L=5*1000      //Length in mm
f=8           //Bending stress in N/sq.mm
yc=10         //Central deflection in mm
E=1.2e4       //Youngs modulus in N/sq.mm

//Calculation
d=((5*L**2*(f*2*8))/(E*384*yc)*1e-1)  //Depth of beam in cm


//Result
printf("\n Depth of beam = %0.3f  cm",d)
