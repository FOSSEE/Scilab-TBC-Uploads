////
//Variable Declaration
eta = 0.891                 //Viscosity of hemoglobin in water, cP
T = 298.0                   //Temperature, K
k = 1.3806488e-23           //Boltzmanconstant,J K^-1
R = 8.314                   //Molar Gas constant,  mol^-1 K^-1
D = 6.9e-11                 //Diffusion coefficient, m2/s 

//Calculations
r = k*T/(6*%pi*eta*1e-3*D)

//Results
printf("\n Radius of protein is %4.3f nm",r/1e-9)

