////Variable Declaration
phe = 1.5          //Pressure in Helium chamber, bar
vhe = 2.0          //Volume of Helium chamber, L
pne = 2.5          //Pressure in Neon chamber, bar
vne = 3.0          //Volume of Neon chamber, L
pxe = 1.0          //Pressure in Xenon chamber, bar
vxe = 1.0          //Volume of Xenon chamber, L
R = 8.314e-2       //Ideal Gas Constant, L.bar/(mol.K)
T = 298            //Temperature of Gas, K
//Calculations

nhe = phe*vhe/(R*T)            //Number of moles of Helium, mol
nne = pne*vne/(R*T)            //Number of moles of Neon, mol
nxe = pxe*vxe/(R*T)            //Number of moles of Xenon, mol
n = nhe + nne + nxe            //Total number of moles, mol
V = vhe + vne + vxe            //Total volume of system, L
xhe = nhe/n
xne = nne/n
xxe = nxe/n
P = n*R*T/(V)
phe = P*xhe              //Partial pressure of Helium, bar
pne = P*xne              //Partial pressure of Neon, bar
pxe = P*xxe              //Partial pressure of Xenon, bar

//Results
printf("\n Moles of He=%4.3f, Ne=%4.3f and, Xe=%4.3f in mol",nhe,nne,nxe )

printf("\n Mole fraction of xHe=%4.3f, xNe=%4.3f and, xXe=%4.3f",xhe,xne,xxe)

printf("\n Final pressure is %4.3f bar",P)

printf("\n Partial pressure of pHe=%4.3f, pNe=%4.3f and, pXe=%4.3f in bar",phe,pne,pxe)

