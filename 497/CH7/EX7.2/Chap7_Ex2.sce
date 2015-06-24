//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-7, Example 2, Page 180
//Title: Entrainment from Large Particle Beds with High Freeboard
//==========================================================================================================
clear
clc

//INPUT
x=0.2;//Fraction of fines in the bed
Gsstar=4.033320//Rate of entrainment in kg/m^2s(from Exa.1)

//CALCULATION
Gsstar1=x*Gsstar;//Rate of entrainment by Eqn.(3)

//OUTPUT
mprintf('\nRate of entrainment=%fkg/m^2s',Gsstar1);

//====================================END OF PROGRAM ====================================================