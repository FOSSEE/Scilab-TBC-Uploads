//////
//Variable Declaration
n = 2.5                //Number of moles of CO2
Ti = 450.     //Initial and final state Temeperatures of CO2, K
Tf = 800.
pi = 1.35     //Initial and final state pressure of CO2, K
pf = 3.45
[A,B,C,D] = (18.86,7.937e-2,-6.7834e-5,2.4426e-8)
                       //Constants in constant pressure Heat capacity equation in J, mol, K units
R = 8.314              //Ideal Gas Constant, J/(mol.K) 
//Calcualtions

dS1 = n*integrate('(A+B*T+C*T**2+D*T**3)/T','T',Ti,Tf)
dS2 = n*R*log(pf/pi)
dS = dS1 - dS2
//Results
printf("\n Entropy change of process is %4.2f J/(mol.K)",dS)

