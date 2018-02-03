clear
//
//Given
//Variable declaration
L=300              //Length in mm
b=50               //Width in mm
t=40               //Thickness in mm
P=300*10**3        //Pull in N
E=2*10**5          //Youngs modulus in N/sq.mm
mu=0.25            //Poisson's ratio

//Calculation
V=L*b*t                           //Original volume in mm^3
Area=b*t                          //Area in sq.mm
stress=P/Area                     //Stress in N/sq.mm
ev=(stress/E)*(1-2*mu)            //Volumetric strain
delV=int(ev*V)                    //Change in volume in mm^3

//Result
printf("\n Change in volume = %0.3f  mm^3",delV)
