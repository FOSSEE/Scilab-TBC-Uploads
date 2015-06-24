//Orsat analysis
clc,clear
//Given:
pCO2=7.5,pCO=1,pO2=9.4 //Percentage of Carbon di oxide(CO2), Carbon mono oxide(CO), Oxygen(O2) in dry exhaust gas
P=1.02 //Pressure of the exhaust gas in bar
pO_v=21 //Percentage of Oxygen in air by volume
pN_v=79 //Percentage of Nitrogen in air by volume
M=29 //Molecular weight of air
//Solution:
C=12 //Atomic mass of Carbon(C)
H=1 //Atomic mass of Hydrogen(H)
//Let 100*x moles of air be used with fuel per 100 mole of dry exhaust products
pN2=100-(pCO2+pCO+pO2) //Composition of Nitrogen(N2) in dry exhaust gas
//Combustion equation
//    a[C] + b[H2]) + pO_v*x[O2] + pN_v*x[N2] = pCO2[CO2] + pCO[CO] + pO2[O2] d[H2O] + pN2[N2]
//Equating coefficients
a=pCO2+pCO //Carbon(C) balance
x=pN2/pN_v //Nitrogen(N) balance
d=2*(pO_v*x-(pCO2+pO2+pCO/2)) //Oxygen(O) balance
d=round(10*d)/10
b=d //Hydrogen(H) balance
m_a=100*x*M //Mass of air in kg
m_f=a*C+b*2*H //Mass of fuel in kg
A_F=m_a/m_f //Air fuel ratio
pC=a*C/m_f*100 //Percentage of Carbon(C) in fuel
pH2=100-pC //Percentage of Hydrogen(H2) in fuel
nT=pCO2+pCO+pO2+pN2+d //Total number of moles in product of combustion
CO2=pCO2/nT*100,O2=pO2/nT*100,CO=pCO/nT*100,N2=pN2/nT*100,H2O=d/nT*100 //Percentage volumetric composition of the products of combustion
PP=d/nT*P //Partial pressure of H2O in bar
//From steam tables
if (PP==0.0825) then
    T=42.8 //Saturation temperature in degreeC
end
//Results:
printf("\n (a)The air fuel ratio used, A_F = %.1f",A_F)
printf("\n (b)The mass analysis of the fuel\n\t Carbon = %.1f percent\n\t Hydrogen = %.1f percent",pC,pH2)
printf("\n (c)The wet products analysis in percent\n\t CO2 = %.1f\n\t O2 = %.2f\n\t CO = %.1f\n\t N2 = %.2f\n\t Steam = %.1f",CO2,O2,CO,N2,H2O)
printf("\n (d)The minimum temperature to which the exhaust may be cooled before condensation occurs = %.1f degreeC\n\n",T)
