//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-14, Example 3, Page 351
//Title: Single-Size Feed of Shrinking Particles
//==========================================================================================================

clear
clc

//INPUT
dp=1;//Particle size in mm
Fo=10;//Feed rate in kg/min
k=0.1;//Particle shrinkage rate in mm/min

//CALCULATION
R=k/2;//Particle shrinkage rate in terms of radius
W=(Fo*dp/2)/(4*R);//Bed weight from Eqn.(42)

//OUTPUT
printf('\nWeight of bed:%fkg',W);

//====================================END OF PROGRAM ======================================================