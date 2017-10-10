////
//Variable Declaration
R = 8.314         //Ideal Gas Constant, J/(mol.K)
T = 298           //Temperatureof Gas, K
M = 0.040         //Molecular wt of Ar, kg/mol


//Calculations
vmp = sqrt(2*R*T/M)
vave = sqrt(8*R*T/(M*%pi))
vrms = sqrt(3*R*T/M)

//Results
printf("\n Maximum, average, root mean square speed of Ar\nat 298 K are %4.0f, %4.0f, %4.0f m/s",vmp,vave,vrms)

