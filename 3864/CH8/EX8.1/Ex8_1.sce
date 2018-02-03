clear
//
//

//Initilization of Variables

L=3000 //mm //Length
d1=1000 //mm //Internal diameter
t=15 //mm //Thickness
P=1.5 //N/mm**2 //Fluid Pressure
E=2*10**5 //n/mm**2 //Modulus of elasticity
mu=0.3 //Poissons ratio

//Calculations

//Hoop stress
f1=P*d1*(2*t)**-1 //N/mm**2

//Longitudinal Stress
f2=P*d1*(4*t)**-1 //N/mm**2

//Max shear stress
q_max=(f1-f2)*2**-1 //N/mm**2

//Diametrical Strain
//Let e1=dell_d*d**-1  .....................(1)
e1=(f1-mu*f2)*E**-1 

//Sub values in equation 1 and further simplifying we get
dell_d=e1*d1 //mm

//Longitudinal strain
//e2=dell_L*L**-1      ......................(2)
e2=(f2-mu*f1)*E**-1 

//Sub values in equation 2 and further simplifying we get
dell_L=e2*L //mm

//Change in Volume 
//Let Z=dell_V*V**-1      ................(3)
Z=2*e1+e2

//Sub values in equation 3 and further simplifying we get
dell_V=Z*%pi*4**-1*d1**2*L

//Result
printf("\n Max Intensity of shear stress %0.2f  N/mm**2",q_max)
printf("\n Change in the Dimensions of the shell is:dell_d %0.2f  mm",dell_d)
printf("\n                                         :dell_L %0.2f  mm",dell_L)
printf("\n                                         :dell_V %0.2f  mm**3",dell_V)
