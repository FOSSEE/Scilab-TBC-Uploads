clear
//
//
//Given
//Variable declaration
D=100           //Diameter in mm
R=D/2           //Radius in mm
F=5*10**3       //Shear force in N
y=40            //given distance from N.A. in mm

//Calculation
//case(i):Average shear stress
A=%pi*R**2
tau_avg=(F/A)

//case(ii):Maximum shear stress for a circular section
tau_max=(4/3*tau_avg)

//case(iii):Shear stress at a distance 40mm from N.A.
I=%pi/64*D**4
tau=((F/(3*I)*(R**2-y**2)))

//Result
printf("\n Average shear stress = %0.3f  N/mm^2",tau_avg)
printf("\n Maximum shear stress = %0.3f  N/mm^2",tau_max)
printf("\n Shear stress at a distance 40mm from N.A. = %0.3f  N/mm^2",tau)
