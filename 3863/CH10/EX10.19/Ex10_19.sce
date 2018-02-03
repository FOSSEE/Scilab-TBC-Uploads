clear
//
//
//Given
//Variable declaration
h=20              //height in m
D=4               //External diameter in m
d=2               //Internal diameter in m
p=1               //Horizontal wind pressure in kN/sq.m
w=22              //specific weight in kN/m^3
K=2/3             //Co-efficient of wind resistance

//Calculation
A1=(%pi/4)*(D**2-d**2)           //Area of cross-section
W=w*A1*h                             //Weigth of the chimney in kN
sigma0=W/A1                          //Direct stress in kN/sq.mm
A2=D*h                               //Projected area of the surface exposed to wind in sq.m
F=K*p*A2                             //Wind Force in kN
M=F*h/2                              //Bending moment in kNm
I=(%pi/64)*(D**4-d**4)           //Moment of inertia
y=D/2                                //Distance between C.G. of the base section and extreme edge of the base
Z=I/y                                //Section modulus
sigmab=M/Z                           //Bending stress
sigma_max=(sigma0+sigmab)     //Maximum stress in kN/sq.m

sigma_min=(sigma0-sigmab)     //Minimum stress in kN/sq.m


//Result
printf("\n Maximum stress = %0.3f  kN/m^2",sigma_max)
printf("\n Minimum stress = %0.3f  kN/m^2",sigma_min)
