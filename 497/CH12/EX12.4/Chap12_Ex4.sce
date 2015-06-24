//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-12, Example 4, Page 305
//Title: Reaction in the Slow Bubble Regime
//==========================================================================================================

clear
clc

//INPUT
uo=0.25;//Superficial gas velocity in m/s
db=0.025;//Equilibrium bubble size in m
Kr=1.5;//rate constant in m^3 gas/m^3 cat s
umf=0.21;//Velocity at minimum fluidization condition in m/s
Lm=0.8;//Length of the bed in m
ephsilonm=0.42;//Void fraction of fixed bed
g=9.81;//Acceleration due to gravity in square m/s^2

//CALCULATION
ubr=0.711*(g*db)^0.5;//Rise velocity of bubble from Eqn.(6.7)
ub=uo-umf+ubr;//Velocity of bubbles in bubbling beds in Eqn.(6.8)
delta=(uo-umf)/(ub+2*umf);//Fraction of bed in bubbles from Eqn.(55) since ub/umf<<1 
XA=1-exp(-Kr*Lm*((1-ephsilonm)/uo)*(umf/uo)*(1-delta));//Conversion from Eqn.(57)
Krtou=Kr*Lm*(1-ephsilonm)/uo;//Dimensionless reaction rate group from Eqn.(5)


//OUTPUT
mprintf('\nComparing the values of 1-XA = %f and Krtou = %f with Fig.(6), we can conlcude that this operating condition is shown as point B in Fig.(3)',1-XA,Krtou);
printf('\nLine 3 gives the locus of conversions for different values of the reaction rate group for this fluidized contacting');

//====================================END OF PROGRAM ======================================================