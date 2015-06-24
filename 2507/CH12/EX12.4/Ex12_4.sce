clc
clear
printf("Example 12.4 | Page number 418 \n\n");
//Find excess air and % theoretical air
//Given data
xC3H8 = 0.2 //mole fraction of propane
xC4H10 = 0.8 //mole fraction of butane

xO2 = 0.21 //mole fraction of O2
xN2 = 0.79 //mole fraction of N2
//Molar masses of O2,H2,N2 & C respectively
MO2 = 32 //g/mol
MH2 = 2 //g/mol
MN2 = 28 //g/mol
MC = 12 //g/mol
Stoichiometric_air = 15.42 //kg/kg

//Solution
//C balance
b = xC3H8*3+xC4H10*4
//H2 balance
e = xC3H8*4 + xC4H10*5
//O2 balance
d = 40*xO2-b -0.5*e
//N2 balance
c = 40*xN2

actual_air = 40*(xO2*MO2 + xN2*MN2)/(xC3H8*(MC*3+MH2*4)+xC4H10*(MC*4+MH2*5)) //kg/kg gas

excess_air = (actual_air - Stoichiometric_air)/Stoichiometric_air*100
printf("Excess air = %.1f%%\n",excess_air)

theoritical_air = 100+excess_air
printf("Theoritical air = %.1f%%\n",theoritical_air)
