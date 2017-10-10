clc
//Given that
m = 5 // mass flow rate in tones/h
Ti = 15 // Initial temperature in degree Celsius
tp = 1535 // Phase change temperature in degree Celsius
Tf = 1650 // Final temperature in degree Celsius
Lh = 270 // Latent heat of iron in kJ/Kg
ml = 29.93 // Specific heat of iron in liquid phase in kJ/Kg
ma = 56 // Atomic weight of iron
sh = 0.502 // Specific heat of iron in solid phase in kJ/Kg
d = 6900 // Density of molten metal in kg/m^3
n=0.7 // furnace efficiency
l_d_ratio = 2 // length to diameter ratio
printf("\n Example 3.5")
h1 = sh*(tp-Ti) // Heat required to raise temperature
h2 = Lh // Heat consumed in phase change
h3 = ml*(Tf-tp)/ma // Heat consumed in raising temperature of molten mass
h = h1+h2+h3 // Heat required per unit mass
Hi = h*m*1e3 // Ideal heat requirement
H = Hi/(n*3600) // Actual heat requirement
V = (3*m)/d // Volume required in m^3
d = (4*V/(%pi*l_d_ratio))^(1/3) // Diameter of furnace 
l = d*l_d_ratio // Length of furnace
printf("\n Rating of furnace would be %f *1e3 kW",H/1e3)
printf("\n Diameter of furnace is %f m",d)
printf("\n Length of furnace is %f m",l)
//The answer provided in the textbook is wrong

