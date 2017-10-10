clc
clear
//INPUT DATA
//C8H18 + XO2 = a Co2 + b H2O// Stoichiometric equation for combustion of octane

//CALCULATIONS

//Carbon balance
a=8//8C=aC

//Hydrogen balance 
b=9//18H=2*b

//Oxygen balance
X=(16+9)/2//2XO=2aO+9

//Combustion equation
Y=3.76*X//moles of nitrogen in the air for Y moles of Oxygen
N=(X+Y)/1//moles of air to one mole of fuel
M=(N)*(29/114)//mass of air required for 1 Kg of Fuel

//OUTPUT
printf("(i)Theoretical air fuel ratio for combustion of octane is %3.2f kg of air/kg",M)
