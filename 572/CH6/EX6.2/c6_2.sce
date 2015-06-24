//(6.2)   Water initially a saturated liquid at 100C is contained within a piston–cylinder assembly. The water undergoes a process to the corresponding saturated vapor state, during which the piston moves freely in the cylinder. There is no heat transfer with the surroundings. If the change of state is brought about by the action of a paddle wheel, determine the net work per unit mass, in kJ/kg, and the amount of entropy produced per unit mass,in Kj/kg.k

//solution

//Assumptions:
//1. The water in the piston–cylinder assembly is a closed system.
//2. There is no heat transfer with the surroundings.
//3. The system is at an equilibrium state initially and finally. There is no change in kinetic or potential energy between these
//two states.

//from table A-2 at 100 degree celcius
ug = 2506.5                                  //in kj/kg
uf = 418.94                                  //in kj/kg
sg = 7.3549
sf = 1.3069

//from energy balance,
W = -(ug-uf)
printf('the net work per unit mass in kj/kg is:\n\t w = %f ',W)

//from entropy balance
sigmabym = (sg-sf)
printf('\n\nthe amount of entropy produced per unit mass in kj/kg.k is :\n\t sigmabym =%f',sigmabym)
