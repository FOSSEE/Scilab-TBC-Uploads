////
//Variable Declaration
n = 1.0                //Number of moles of CO2
T = 300.0              //Temeperatures of Water bath, K
vi = 25.0     //Initial and final state Volume of Ideal Gas, L
vf = 10.0
R = 8.314              //Ideal Gas Constant, J/(mol.K) 

//Calcualtions
qrev = n*R*T*log(vf/vi)
w = -qrev
dSsys = qrev/T
dSsur = -dSsys
dS = dSsys + dSsur

//Results
printf("\n Entropy change of surrounding is %4.1f J/(mol.K)",dSsur)

printf("\n Entropy change of system is %4.1f J/(mol.K)",dSsys)

printf("\n Total Entropy change is %4.1f J/(mol.K)",dS)

