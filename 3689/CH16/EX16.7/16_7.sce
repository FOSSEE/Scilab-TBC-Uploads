////
//Variable Declaration
R = 8.314         //Ideal Gas Constant, J/(mol.K)
T = 298           //Temperature of Gas, K
MAr = 0.04        //Molecular wt of Ar, kg/mol
MKr = 0.084       //Molecular wt of Kr, kg/mol
pAr  = 360        //Partial Pressure Ar, torr
pKr  = 400        //Partial Pressure Kr, torr
rAr = 0.17e-9     //Hard sphere radius of Ar, m
rKr = 0.20e-9     //Hard sphere radius of Kr, m
NA = 6.022e23     //Number of particles per mol
k = 1.38e-23      //Boltzmann constant, J/K

//Calculations
pAr = pAr*101325/760
pKr = pKr*101325/760
p1 = pAr*NA/(R*T)
p2 = pKr*NA/(R*T)
sigm = %pi*(rAr+rKr)**2
mu = MAr*MKr/((MAr+MKr)*NA)
p3 = sqrt(8*k*T/(%pi*mu)) 
zArKr = p1*p2*sigm*p3

//Results
printf("\n Collisional frequency is %4.2e m-3s-1",zArKr)

