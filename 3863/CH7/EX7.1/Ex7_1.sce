clear
//Given
//Variable declaration
b=120             //Width of plate in mm
t=20              //Thickness of plate in mm
R=10*10**3        //Radius of curvature in mm
E=2e5             //Youngs modulus in N/sq.mm

//Calculation
I=b*t**3/12                    //Moment of inertia in mm^4
y_max=t/2                      //Maximum distance in mm
sigma_max=int((E/R)*y_max)     //Maximum stress in N/sq.mm
M=((E/R*I)*(10**-6))    //Bending moment in kNm


//Result
printf("\n Maximum stress = %0.3f  N/mm^2",sigma_max)
printf("\n Bending moment = %0.3f  kNm",M)
