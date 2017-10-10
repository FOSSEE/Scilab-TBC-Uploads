
clear//

//Variable Declaration
I=547 //Moment of inertia in inches^4
d=8.9 //NA deoth in inches
V=12 //Shear Force in kips
h=7.3 //Depth of NA
b=2 //Width in inches
t=1.2 //Thickness in inches
h2=7.5 //Depth in inches

//Calculations
//Shear Stress at NA
Q=(b*h)*(h*0.5) //First Moment about NA in in^3
tau=(V*10**3*Q)/(I*b) //Shear stress at NA in psi

//Shear Stress at a-a
Q_1=(t*h2)*(d-h2*0.5) //First moment about NA in in^3
tau1=(V*Q_1)/(I*t) //Shear Stress in psi

//Result
printf("\n Comparing two stresses")
printf("\n The maximum stress is %0.0f psi",max(tau,tau1))
