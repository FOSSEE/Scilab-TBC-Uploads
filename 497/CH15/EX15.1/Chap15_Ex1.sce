//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-15, Example 1, Page 369
//Title: Circulation Rate when Deactivation Controls
//==========================================================================================================

clear
clc

//INPUT
thalf=1;//Half life of catalyst in s
F=960;//Feed rate of oil in tons/day
W=50;//Weight of the bed in tons
a=0.5;//Activity after time equal to half life
abar=0.01;//Average activity of the catalyst

//CALCULATION
Ka=-log(a)/thalf;//Rate constant is s^-1, assuming I order kinetics from Eqn.(12)
Fs=Ka*W*abar/(1-abar);//Circulation rate of solids from Eqn.(16)
x=(Fs*60*60*24)/F;//Circulation rate per feed of oil

//OUTPUT
mprintf('\nSolid recirculation per feed of oil =%ftons of solid circulated/ton feed oil',x);

//====================================END OF PROGRAM ======================================================