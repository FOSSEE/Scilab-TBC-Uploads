////
//Variable Declaration
eta = 227.                  //Viscosity of Ar, muP
P = 101325                  //Pressure, Pa
kt = 0.0177                 //Thermal conductivity, J/(K.m.s)
T = 300.0                   //Temperature, K
k = 1.3806488e-23           //Boltzmanconstant,J K^-1
R = 8.314                   //Molar Gas constant,  mol^-1 K^-1
NA = 6.02214129e+23         //mol^-1
M = 39.9                    //Molecualar wt of Argon and Neon, kg/mol

//Calculations
nuavg = sqrt(8*R*T/(%pi*M*1e-3))
N = NA*P/(R*T)
m = M*1e-3/NA
labda = 3.*eta*1e-7/(nuavg*N*m)          //viscosity in kg m s units
sigm = 1./(sqrt(2)*N*labda)

//Results
printf("\n Collisional cross section %4.2e m2",sigm)

