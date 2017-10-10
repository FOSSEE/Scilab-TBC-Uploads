////Variable Declaration
M = 0.050       //Molarity for NaCl and Na2SO4 solution, mol/kg
[npa,zpa] = (1,1)
[nma,zma] = (1,1)
[npb,zpb] = (2,1)
[nmb,zmb] = (1,2)

//Calculations
Ia = M*(npa*zpa**2 + nma*zma**2)/2
Ib = M*(npb*zpb**2 + nmb*zmb**2)/2

//Results
printf("\n Ionic streangth for NaCl solution is %4.3f and for Na2SO4 solution is %4.3f, mol/kg",Ia,Ib)

