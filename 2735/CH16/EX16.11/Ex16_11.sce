clc
clear
//Initialization of variables
co2=8.7 //Moles of CO2
co=8.9 //Moles of CO
N2=78.1 //Moles of Nitrogen
M=29 //Molar mass of Air
ba=2.12 //Basis
x4=0.3 //Moles of Ch4
x5=3.7 //Moles of H2
x6=14.7 //moles of H2o
//calculations
O2=N2/3.76
c=14.7
Z=2.238
X=(Z*17-x4*4-x5*2)/2
a=co2+co/2+x4+x6/2
b=3.764*a
AF=(O2+N2)*M/(Z*113)
//results
printf("Air fuel ratio = %.1f lbm air/lbm fuel",AF)

