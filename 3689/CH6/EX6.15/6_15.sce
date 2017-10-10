////
//Variable Declaration
m = 1000.0                //mass of mercury, g
Pi  = 1.00     //Intial pressure and temperature, bar, K
Ti = 300
Pf = 300.     //Final pressure and temperature, bar, K
Tf  = 600.0
rho = 13534.              //Density of mercury, kg/m3
beta = 18.1e-4            //Thermal exapansion coefficient for Hg, /K 
kapa = 3.91e-6            //Isothermal compressibility for Hg, /Pa
Cpm = 27.98               //Molar Specific heat at constant pressure, J/(mol.K) 
M = 200.59                //Molecular wt of Hg, g/mol

//Calculations
Vi = m*1e-3/rho
Vf = Vi*exp(-kapa*(Pf-Pi))
Ut = m*Cpm*(Tf-Ti)/M 
Up =  (beta*Ti/kapa-Pi)*1e5*(Vf-Vi) + (Vi-Vf+Vf*log(Vf/Vi))*1e5/kapa
dU = Ut + Up
Ht = m*Cpm*(Tf-Ti)/M
Hp = ((1 + beta*(Tf-Ti))*Vi*exp(-kapa*Pi)/kapa)*(exp(-kapa*Pi)-exp(-kapa*Pf))
dH =  Ht + Hp
//Results
printf("\n Internal energy change is %6.2e J/mol in which \ncontribution of temperature dependent term %6.4f percent",dU,Ut*100/dH)

printf("\n Enthalpy change is %4.3e J/mol in which \ncontribution of temperature dependent term %4.1f percent",dH,Ht*100/dH)

