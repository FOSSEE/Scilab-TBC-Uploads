clc,clear
printf('Example 10.2\n\n')

area=  33*13 //length * breadth
E = 72 //illumination
UF = 0.4 //utilisation factor
DF = 1.4 //depreciation factor
wattage_of_lamp=200
lumens_per_lamp= 2730
E_reqd= E*area * DF/UF //total illumination required from source
lamps= E_reqd/lumens_per_lamp//total no of lamps required
printf('Number of lamps required = %.0f',lamps)
