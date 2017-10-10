////Variable Declaration
m = 0.5         //Mass of water, kg
ms = 24.0       //Mass of solute, g
Ms = 241.0      //Molecular wt of solute, g/mol
Tfd = 0.359     //Freezinf point depression, °C or K
kf = 1.86       //Constants for freezing point depression for water, K kg/mol

//Calculations
msolute = ms/(Ms*m)
gama = Tfd/(kf*msolute)

//Results
printf("\n Activity coefficient = %4.3f",gama)

