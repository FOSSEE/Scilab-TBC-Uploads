////Variable Declaration
m = 1.0           //Mass of Methane, kg
T = 230           //Temeprature of Methane, K
P = 68.0          //Pressure, bar 
Tc = 190.56       //Critical Temeprature of Methane
Pc = 45.99        //Critical Pressure of Methane
R = 0.08314       //Ideal Gas Constant, L.bar/(mol.K)
M = 16.04         //Molecular wt of Methane

//Calcualtions
Tr = T/Tc
Pr = P/Pc
z = 0.63          //Methane compressibility factor
n = m*1e3/M
V = z*n*R*T/P
Vig = n*R*T/P
DV = (V - Vig)/V

//Results
printf("\n V-Videal %4.2f L",V-Vig)

printf("\n Percentage error %5.2f",DV*100)

