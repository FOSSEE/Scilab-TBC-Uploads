
clear//

//Variable Declaration
p=125 //Pressure in psi
r=24 //Radius of the vessel in inches
t=0.25 //Thickness of the vessel in inches
E=29*10**6 //Modulus of Elasticity in psi
v=0.28 //poisson ratio

//Calcualtions
//Part 1
sigma_c=p*r*t**-1 //Circumferential Stress in psi
sigma_l=sigma_c/2 //Longitudinat Stress in psi
e_c=E**-1*(sigma_c-(v*sigma_l)) //Circumferential Strain using biaxial Hooke's Law 
delta_r=e_c*r //Change in the radius in inches

//Part 2
sigma=(p*r)*(2*t)**-1 //Stress in psi
e=E**-1*(sigma-(v*sigma)) //Strain using biaxial Hooke's Law
delta_R=e*r //Change inradius of end-cap in inches

//Result
printf("\n Part 1 Answers")
printf("\n Stresses are sigma_c= %0.0f psi and sigma_l= %0.0f psi",sigma_c,sigma_l)
printf("\n Change of radius of cylinder= %0.5f in",delta_r)
printf("\n Part 2 Answers")
printf("\n Stresses are sigma= %0.0f psi",sigma)
printf("\n Change in radius of end cap= %0.5f in",delta_R)
