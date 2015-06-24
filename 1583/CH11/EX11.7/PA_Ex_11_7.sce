clc
//Chapter 11:Power amplifiers
//example 11.7 page no 480
//given
Vg=8//get signal level for VMOS 2N6659
Rl=50//load resistance in ohms(it should have been given in the problem but its missing)
disp('The specification sheet for the 2N6659 indicates that yhe on resisitance is approximately 2 ohm for this drive level')
Ron=2
Poideal=20
Po=Poideal*((Rl/(Rl+Ron))^2)//actual output power
Eff=Rl*100/(Rl+Ron)//Efficiency
mprintf('actual output power is %f W \n the Efficiency is %f ',Po,Eff)
