clc
clear
//INPUT DATA
a=7;//Composition
b=9;//Composition
//C7H9O0.2813 ;//GIVEN FUEL
//C7H9O0.2813N0.107 + m O2 + m (79/21) N2 = x CO2 + y H2O + z N2 ;//COMBUSTION EQUATION

//CALCULATIONS
x=7;//By balancing method composition of CO2
y=4.5;//By balancing method composition of H2O
m=9.11;//By balancing method composition of O2
z=35.4;//By balancing method composition of N2

//C7H9O0.2813N0.107 + 9.11 O2 + 9.11*(79/21) N2 = 7 CO2 + 4.5 H2O + 35.4 N2 ;//COMBUSTION EQUATION CALCULATED
xs=m*32+m*(79/21)*28/(100);//air fuel ratio

//(ii)Percentage composition of dry flue gases increased by 20% excess air
//C7H9O0.2813N0.107 + (1.2*9.11) O2 + (1.2*9.11)*(79/21) N2 = 7 CO2 + 4.5 H2O + 1.2*35.4 N2 + (0.2*9.11) O2 ;//COMBUSTION EQUATION CALCULATED
n=7+4.5+0.2*9.11+1.2*35.4;//Total number of moles of dry flue gases by volume
nCO2=(7/n)*100;//Percentage composition of dry flue gases by volume
nO2=(1.822/n)*100;//Percentage composition of dry flue gases by volume
nN2=(42.48/n)*100;//Percentage composition of dry flue gases by volume

//OUTPUT
printf('Percentage composition of dry flue gases by volume \n(i)CO2 %3.2f \n (ii)O2 %3.2f \n (iii)N2 %3.2f ',nCO2,nO2,nN2)

