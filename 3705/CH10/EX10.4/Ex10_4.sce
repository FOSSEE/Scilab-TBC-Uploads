
clear//

//Variable Declaration
Le=7 //Effective Length in m
N=2 //Factor of Safety
h_max=400 //Maximum depth in mm
E=200 //Youngs Modulus in GPa
sigma_yp=250 //Maximum stress in yielding in MPa
P1=400 //Load 1 in kN
P2=900 //Load 2 in kN
x1=75 //Distance in mm
x2=125 //Distance in mm

//Calculations
e=(P2*x2-P1*x1)*(P1+P2)**-1 //Eccentricity in mm
P=N*(P1+P2) //Applied load after factor of safety is considered in kN

//Part 1 is not computable
I=415*10**-6 //Moment of inertia from the table in mm^4

//Part 2
P_cr=%pi**2*E*10**9*I*Le**-2 //Critical load for buckling in kN
FOS=P_cr*10**-3/(P1+P2) //Factor of safety against buckling in y-axis


//Result
printf("\n The critical load for buckling is %0.0f kN",P_cr*10**-3)
printf("\n The factor of safety is %0.1f ",FOS)
