////
//Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s
v = 1.0            //Volume, L
T = 298.0          //Temeprature of Ar, K
m = 6.63e-26       //Mass of Argon molecule, kg 

//Calculations 
GAMA = h/sqrt(2*%pi*m*k*T)
v = v*1e-3
qT3D = v/GAMA**3

//Results
printf("\n Thermal wave length is %3.2e m and\nTranslational partition function is %3.2e",GAMA,qT3D)

