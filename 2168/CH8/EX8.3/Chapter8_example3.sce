clc
clear
//Input data
H=15//Percentage of Hydrogen by volume
CO=25//Percentage of carbon monoxide by volume
CH4=4//Percentage of methane by volume
CO2=4//Percentage of carbon dioxide by volume
O2=2//Percentage of oxygen by volume. In textbook it is given wrong as 25
N2=50//Percentage of nitrogen  by volume

//Calculations
O21=(H/100)*(1/2)//Volume of oxygen required in m^3 by 15 percent of H2
O22=(CO/100)*(1/2)//Volume of oxygen required in m^3 by 25 percent of CO
CO21=(CO/100)*1//Volume of CO2 produced in m^3 by 25 percent of CO
O23=(CH4/100)*2//Volume of oxygen required in m^3 by 4 percent of CH4
CO22=(CH4/100)*1//Volume of CO2 produced in m^3 by 4 percent of CH4
H201=(CO/100)*2//Volume of H2O produced in m^3 by 4 percent of CH4
TO2=(O21+O22+O23-(O2/100))//Total vol. of oxygen in m^3
wa=(TO2*(100/21))//Theoretical volume of air required in m^3
vN2=(wa*(79/100))//Volume of N2 present in air in m^3
TvN2=(vN2+(N2/100))//Total volume of N2 after combustion of 1 m^3 of fuel in m^3
xCO2=(CO21+CO22)//CO2 produced due to combustion of fuel in m^3
TCO2=(xCO2+(CO2/100))//Total volume of CO2 in the flue gas in m^3

//Output
printf('The air required for complete combustion of one m^3 of the fuel is %3.3f cu.m \n The dry flue gas contains %3.3f cu.m volume of N2 and %3.2f cu.m volume of CO2',wa,TvN2,TCO2)  
