////
//Variable Declaration
n = 1.0                //Number of moles of CO2
T = 300.0              //Temeperatures of Water bath, K
vi = 25.0     //Initial and final state Volume of Ideal Gas, L
vf = 10.0
R = 8.314              //Ideal Gas Constant, J/(mol.K) 

//Calcualtions
pext = n*R*T/(vf/1e3)
pi = n*R*T/(vi/1e3)
q = pext*(vf-vi)/1e3
qrev = n*R*T*log(vf/vi)
w = -q
dSsur = -q/T
dSsys = qrev/T
dS = dSsys + dSsur

//Results
printf("\n Constant external pressure and initial pressure are %4.3e J,and %4.3e J respectively",pext,pi)

printf("\n Heat in reverssible and irreversible processes are %4.1f J,and %4.1f J respectively",qrev,q)

printf("\n Entropy change of system is %4.1f J/(mol.K)",dSsys)

printf("\n Entropy change of surrounding is %4.2f J/(mol.K)",dSsur)

printf("\n Total Entropy changeis %4.2f J/(mol.K)",dS)

