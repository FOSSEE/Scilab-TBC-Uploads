//Calculation of mass of air
clc,clear
//Given:
MS=25 //Mixture strength in percent
p=23.1 //Percentage of oxygen in air by mass
//Solution:
C=12 //Atomic mass of Carbon(C)
H=1 //Atomic mass of Hydrogen(H)
O=16 //Atomic mass of Oxygen(O)
N=14 //Atomic mass of Nitrogen(N)
m_f=1 //Mass of fuel(C6H14) in kg
mC=(6*C)/((6*C)+(14*H)) //Mass of Carbon in kg
mH=(14*H)/((6*C)+(14*H)) //Mass of Hydrogen in kg
m_a=(2*O/C*mC+O/(2*H)*mH)*100/p //Mass of air in kg
//For 25 percent rich mixture
m_f=m_f+m_f*MS/100 //Mass of fuel(C6H14) in kg
A_F=m_a/m_f //Air fuel ratio
mO2=p/100*A_F //Mass of Oxygen available in kg
mO2_1=O/(2*H)*mH //Oxygen required for combustion of H to H2O in kg
mH2O=mH*(1+O/(2*H)) //Mass of H2O produced in kg
mO2_2=O/C*mC //Oxygen required for combustion of C to CO in kg
mCO=mC*(1+O/C) //Mass of CO produced in kg
mO2_3=mO2-(mO2_1+mO2_2) //Mass of Oxygen remaining for combustion of CO to CO2
mCO_b=mO2_3*(C+O)/O //Mass of CO burned to CO2 in kg
mCO2=mCO_b*(1+O/(C+O)) //Mass of CO2 produced in kg
mCO_ub=mCO-mCO_b //Mass of CO unburned in kg
nH2O=mH2O/(2*H+O) //Moles of H2O
nCO2=mCO2/(C+2*O) //Moles of CO2
nCO=mCO_ub/(C+O) //Moles of CO
mN2=A_F*(1-p/100) //Mass of Nitrogen (N2) in kg
nN2=mN2/(2*N) //Moles of N2
nT=nH2O+nCO2+nCO+nN2 //Total number of moles
pH2O=nH2O/nT,pCO2=nCO2/nT,pCO=nCO/nT,pN2=nN2/nT //Composition of products
//Results:
printf("\n The theoretical mass of air required, m_a = %.2f kg",m_a)
printf("\n The composition of the products in percent\n\t H2O = %.2f\n\t CO2 = %.2f\n\t CO = %.2f\n\t N2 = %.2f\n\n",pH2O*100,pCO2*100,pCO*100,pN2*100)
