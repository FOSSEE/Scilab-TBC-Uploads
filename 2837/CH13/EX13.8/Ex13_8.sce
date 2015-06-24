clc
clear
//Initialization of variables
o2=12.5 //moles of O2
h20=9 //moles of H2O
x=0.21 //Mole fraction of Oxygen in air
M=28.97 //Molar mass of air
M2=56 //molar mass of C4H8
M1=8*12+18 //molecular mass of c8h18
//calculations
air=o2/x
pound=air*M
AR=pound/M1
y1=h20/M2 *100
y2=o2*(79/21) /M2 *100
//results
printf("Air fuel ratio = %.2f lb of air per pound of fuel",AR)
printf("\n Molal or volumetric analysis is %.2f percent of CO2 and %.2f percent N2",y1,y2)
