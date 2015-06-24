//Analysis of fuel from exhaust gas analysis
clc,clear
//Given:
pCO2=12/100,pCO=2/100,pCH4=4/100,pH2=1/100,pO2=4.5/100 //Composition of Carbon di oxide(CO2), Carbon mono oxide(CO), Methane(CH4), Hydrogen(H2), Oxygen(O2) in dry exhaust gas
pN2=1-(pCO2+pCO+pCH4+pH2+pO2) //Composition of Nitrogen(N2) in dry exhaust gas
//Solution:
C=12 //Atomic mass of Carbon(C)
H=1 //Atomic mass of Hydrogen(H)
p_v=21 //Percentage of Oxygen in air by volume
//Let X be the mass of the fuel per mole dry exhaust gas
//Let Y be the mole of O2 per mole dry exhaust gas
//Let 1 kg of fuel contain p kg of C and q kg of H2
//Combustion equation
//X*(p/C[C] + q/(2*H)[H2]) + Y[O2] + (100-p_v)/p_v*Y[N2] = pCO2[CO2] + pCO[CO] + pCH4[CH4] + pH2[H2] + pO2[O2] + a[H2O] + pN2[N2]
//Equating coefficients
Y=pN2/((100-p_v)/p_v) //Nitrogen(N) balance
a=2*(Y-(pCO2+pCO/2+pO2)) //Oxygen(O) balance
Xp=C*(pCO2+pCO+pCH4) //Carbon(C) balance; X*p
Xq=(2*H)*(2*pCH4+pH2+a) //Hydrogen(H) balance; X*q
p_q=Xp/Xq //Ratio of C to H2 in fuel
//Results:
printf("\n The proportion by mass of Carbon to Hydrogen in the fuel = %.2f/1\n",p_q)
