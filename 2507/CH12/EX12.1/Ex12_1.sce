clc
clear
printf("Example 12.1 | Page number 412 \n\n");
//Part(a) Find gravimetric analysis
//Part(b) Find ultimate analysis
//Given solution
xCO2 = 0.03 //mole fraction of CO2
xCO = 0.19 //mole fraction of CO
xH2 = 0.41 //mole fraction of H2
xCH4 = 0.25 //mole fraction of CH4
xC2H4 = 0.09 //mole fraction of C2H4
xN2 = 0.03 //mole fraction of N2

//Solution
//Part(a)
printf("Part(a)\n");
M = xCO2*44 + xCO*28 + xH2*2 + xC2H4*28 +xCH4*16 + xN2*28 //kg/mol //average molar mass
yCO2 = xCO2*(44/M)
yCO = xCO*(28/M)
yH2 = xH2*(2/M)
yCH4 = xCH4*(16/M)
yC2H4 = xC2H4*(28/M)
yN2 = xN2*(28/M)
printf("yCO2 = %.2f%%\n",yCO2*100)
printf("yCO = %.2f%%\n",yCO*100)
printf("yH2 = %.2f%%\n",yH2*100)
printf("yCH4 = %.2f%%\n",yCH4*100)
printf("yC2H4 = %.2f%%\n",yC2H4*100)
printf("yN2 = %.2f%%\n\n",yN2*100)

//Part(b)
printf("Part(b)\n");
nC = xCO2 + xCO + xCH4 + xC2H4*2 //number of moles of C
nH2 = xH2 + xCH4*2 + xC2H4*2 //number of moles of H2
nO2 = xCO2 + 0.5*xCO //number of moles of O2
nN2 = xN2 //number of moles of N2

mC = nC*12/M
mH2 = nH2*2/M
mO2 = nO2*32/M
mN2 = nN2*28/M
printf("mC = %.2f%%\n",mC*100)
printf("mH2 = %.2f%%\n",mH2*100)
printf("mO2 = %.2f%%\n",mO2*100)
printf("mN2 = %.2f%%\n",mN2*100)
