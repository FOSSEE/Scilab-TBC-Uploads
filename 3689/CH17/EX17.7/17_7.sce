////
//Variable Declaration
m = 22.7                    //Mass of CO2, kg
T = 293.0                   //Temperature, K
L = 1.0                     //length of the tube, m
d = 0.75                    //Diameter of the tube, mm
eta = 146                   //Viscosity of CO2, muP
p1 = 1.05                   //Inlet pressure, atm
p2 = 1.00                   //Outlet pressure, atm
atm2pa = 101325             //Conversion for pressure from atm to Pa 
M = 0.044                   //Molecular wt of CO2, kg/mol
R = 8.314                   //Molar Gas constant,  J mol^-1 K^-1

//Calculations
p1 = p1*atm2pa
p2 = p2*atm2pa
F = %pi*(d*1e-3/2)**4*(p1**2-p2**2)/(16.*eta/1.e7*L*p2)
nCO2 = m/M
v = nCO2*R*T/((p1+p2)/2)
t = v/F

//Results
printf("\n Flow rate is %4.3e m3/s",F)

printf("\n Cylinder can be used for %4.3e s nearly %3.1f days",t, t/(24*3600))

