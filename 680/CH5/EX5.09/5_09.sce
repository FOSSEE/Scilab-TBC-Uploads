//Problem 5.09:

//initializing the variables:
nCO2 = 7.5
nCO = 1.3
nO2 = 8.1
nN2 = 83.1

//calculation:
//Determine the amount of oxygen fed for combustion. Since nitrogen does not react (key component), using the ratio of oxygen to nitrogen in air will provide the amount of oxygen fed:
O2f = (21/79)*83.1
//A balanced equation for the combustion of the hydrocarbon in terms of N moles of the hydrocarbon and n hydrogen atoms in the hydrocarbon yields
//NC3Hn + 22.1O2 ---> 7.5CO2 + 1.3CO + 8.1O2 + N(n/2)H2O
//The moles of hydrocarbon, N, is obtained by performing an elemental carbon balance:
//3N = 7.5 + 1.3
N = 8.8/3
//Similarly, the moles of water formed is obtained by performing an elemental oxygen balance:
//2(22.1) = 2(7.5) + 1.3 + 2(8.1) + N(n/2)
//A = N(n/2)
A = 44.2 - 15 - 1.3 - 16.2
//The number of hydrogen atoms, n, in the hydrocarbon is then
n = 2*A/N
//Since n = 8, the hydrocarbon is C3H8, propane.

printf("\n\nResult\n\n")
printf("\n n= %.0f\n",n)
printf("\n the hydrocarbon is C3H8, propane")
