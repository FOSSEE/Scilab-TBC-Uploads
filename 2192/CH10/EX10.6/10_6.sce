clc,clear
printf('Example 10.6\n\n')

Area=30*10 //length*breadth
E=250 //illumination
wattage = 300
UF=0.4 //utilisation factor
DF=0.9// depreciation factor
efficiency=14 //luminous efficiency
lumen_output = E*Area/(UF*DF)//gross lumen output requiredd from source
flux = wattage * efficiency //flux emitted by each lamp
lamps= lumen_output/flux  //total no of lamps required

printf('No. of lamps required = %d lamps',ceil(lamps))
