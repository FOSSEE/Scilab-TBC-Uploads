clear
//
//

//Initilization of Variables

//Boiler Dimensions
t=16 //mm //Thickness
p=2 //N/mm**2 //internal pressure
f=150 //N/mm**2 //Permissible stress
rho1=0.75 //Longitudinal joints
rho2=0.45 //circumferential joints

//Calculations

//Equating Bursting force to longitudinal joint strength ,we get
d1=rho1*2*t*f*p**-1 //mm

//Considering circumferential strength 
d2=4*rho2*t*f*p**-1 //mm

//Result
printf("\n Largest diameter of Boiler is %0.2f  mm",d1)
