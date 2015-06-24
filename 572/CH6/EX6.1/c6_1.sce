// (6.1)   Water, initially a saturated liquid at 100C, is contained in a piston–cylinder assembly. The water undergoes a process to the corresponding saturated vapor state, during which the piston moves freely in the cylinder. If the change of state is brought about by heating the water as it undergoes an internally reversible process at constant pressure and temperature, determine the work and heat transfer per unit of mass, each in kJ/kg.

//solution


T = 373.15                              //temperature in kelvin
//from table A-2
p = 1.014*10^5                           //pressure in pascal
vg = 1.673
vf = 1.0435e-3
sg = 7.3549
sf = 1.3069

w = p*(vg-vf)*10^(-3)
Q = T*(sg-sf)

printf('the work per unit mass in kj/kg is\n\t w = %f',w)
printf('\nthe heat transfer per unit mass in kj/kg is \n\t Q = %f',Q)
