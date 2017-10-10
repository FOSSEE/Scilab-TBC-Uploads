////Variable Declaration
m = 4.50        //Mass of substance dissolved, g
ms = 125.0      //Mass of slovent (CCl4), g
TbE = 0.65      //Boiling point elevation, °C
[Kf, Kb] = (30.0, 4.95)    //Constants for freezing point elevation 
                        // and boiling point depression for CCl4, K kg/mol
Msolvent = 153.8  //Molecualr wt of solvent, g/mol
//Calculations
DTf = -Kf*TbE/Kb
Msolute = Kb*m/(ms*1e-3*TbE)
nsolute = m/Msolute
nsolvent = ms/Msolvent 
x = 1.0 -  nsolute/(nsolute + nsolvent)

//Results
printf("\n Freezing point depression %5.2f K",DTf)

printf("\n Molecualr wt of solute %4.1f g/mol",Msolute)

printf("\n Vapor pressure of solvent is reduced by a factor of %4.3f",x)

