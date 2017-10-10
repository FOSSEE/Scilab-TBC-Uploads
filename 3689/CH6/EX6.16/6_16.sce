////Variable Declaration
T = 300.0                   //Temperature of Hg, K 
beta = 18.1e-4              //Thermal exapansion coefficient for Hg, /K 
kapa = 3.91e-6              //Isothermal compressibility for Hg, /Pa
M = 0.20059                 //Molecular wt of Hg, kg/mol 
rho = 13534                 //Density of mercury, kg/m3
Cpm = 27.98                 //Experimental Molar specif heat at const pressure for mercury, J/(mol.K)

//Calculations
Vm = M/rho
DCpmCv = T*Vm*beta**2/kapa
Cvm = Cpm - DCpmCv
//Results
printf("\n Difference in molar specific heats \nat constant volume and constant pressure %4.2e J/(mol.K)",DCpmCv)

printf("\n Molar Specific heat of Hg at const. volume is %4.2f J/(mol.K)",Cvm)

