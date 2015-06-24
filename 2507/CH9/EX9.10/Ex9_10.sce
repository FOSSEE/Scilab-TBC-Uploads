clc
clear
printf("Example 9.10 | Page number 280 \n\n");
//Part(a) Find molar mass and gas constant
//Part(b) Find mole fractions, partial fractions and partial volumes
//Given
m = 1.9 //kg
T = 273+20 //K
p = 150e3 //Pa
yO2 = 0.1 //mass fraction of O2
yN2 = 0.75 //mass fraction of N2
yCO2 = 0.12 //mass fraction of CO2
yCO = 0.03 //mass fraction of CO

//Solution
//Part(a)
printf("Part(a)\n\n");
M = 1/((yO2/32)+(yN2/28)+(yCO/28)+(yCO2/44)) //kg/kmol //molar mass
printf("Molar mass = %.2f kg/kmol \n",M)
R = 8314.3/M //J/kgK //Gas constant
printf("Gas Constant = %.2f J/kgK \n",R)
V = m*R*T/p //m^3 //Volume

//Part(b)
printf("\nPart(b)\n")
xO2 = yO2*(M/32) //mole fraction O2
printf("\nMole fraction of O2 = %.3f",xO2)
pO2 = xO2*p //partial pressure O2
printf("\nPartial pressure of O2 = %.2f kPa",pO2*.001)
VO2 = xO2*V //partial volume of O2
printf("\nPartial volume of O2 = %.4f m^3\n",VO2)


xN2 = yN2*(M/28) //mole fraction N2
printf("\nMole fraction of N2 = %.3f",xN2)
pN2 = xN2*p //partial pressure N2
printf("\nPartial pressure of N2 = %.2f kPa",pN2*.001)
VN2 = xN2*V //partial volume of N2
printf("\nPartial volume of N2 = %.4f m^3\n",VN2)


xCO2 = yCO2*(M/44) //mole fraction CO2
printf("\nMole fraction of CO2 = %.3f",xCO2)
pCO2 = xCO2*p //partial pressure CO2
printf("\nPartial pressure of CO2 = %.2f kPa",pCO2*.001)
VCO2 = xCO2*V //partial volume of CO2
printf("\nPartial volume of CO2 = %.4f m^3\n",VCO2)


xCO = yCO*(M/28) //mole fraction CO
printf("\nMole fraction of CO = %.3f",xCO)
pCO = xCO*p //partial pressure CO
printf("\nPartial pressure of CO = %.2f kPa",pCO*.001)
VCO = xCO*V //partial volume of CO
printf("\nPartial volume of CO = %.4f m^3\n",VCO)
