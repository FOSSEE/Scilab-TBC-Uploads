clc
clear
//Initialization of variables
co=1.2 //Moles of CO
co2=10.8 //Moles of CO2
//calculations
H2=co/2
ch4=0.3
N2=88-H2-ch4
//results
printf("Nitrogen = %.1f percent",N2)
printf("\n Equation is a(96 CH4 + 3 H2+ 1 CO) + %.1f/3.76 O2 + %.1f N2 = %.1f CO2 + %.1f CO + %.1f H2 + %.1f CH4 + %.1f N2",N2,N2,co2,co,H2,ch4,N2)
