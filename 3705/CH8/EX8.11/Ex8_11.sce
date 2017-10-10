
clear//

//Variable Declaration
L=15 //Length of the shaft in inches
r=3.0/8.001 //Radius of the shaft in inches
T=540 //Torque applied in lb.in

//Calculations
V=30 //Transverse Shear Force in lb
M=15*V //Bending Moment in lb.in
I=(%pi*r**4)/4.0 //Moment of Inertia in in^4
J=2*I //Polar Moment Of Inertia in in^4

//Part 1
sigma=(M*r)/I //Bending Stress in psi
tau_t=10**-3*(T*r)/J //Shear Stress in ksi

sigma_max1=13.92 //From the Mohr Circle in ksi

//Part 2
Q=(2*r**3)/3.0 //First Moment in in^3
b=2*r // in

tau_V=10**-3*(V*Q)/(I*b) //Shear Stress in ksi
tau=tau_t+tau_V //Total Shear in ksi

sigma_max2=tau //Maximum stress in ksi

//Result
printf("\n The maximum normal stress in case 1 is %0.3f ksi",sigma_max1)
printf("\n The Maximum normal stress in case 2 is %0.2f ksi",sigma_max2)
