//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-6, Example 5, Page 161
//Title: Reactor Scale-up for Geldart B Catalyst
//==========================================================================================================
clear
clc

//INPUT
dtb=20;//ID of bench-scale reactor
dtp=1;//ID of pilot reactor
dpbar=200;//Average particle size in micrometer
ephsilonmf=0.50;//Void fraction at minimum fluidization condition
ephsilonmb=0.50;//Void fraction 
uo=30;//Superficial gas velocity in cm/s
Lmb=2;//Length of fixed bed in m
umf=3;//Velocity at minimum fluidization condition in cm/s
umb=3;//Velocity at in cm/s
g=9.80;//Acceleration due to gravity in m/s^2
pi=3.142857;

//CALCULATION
//In the small bench unit
c=1;
ubb=c*((uo-umf)/100)+0.35*(g*(dtb/100))^0.5;//Velocity using Eqn.(5.22)
zsb=60*(dtb)^0.175;//Height using Eqn.(5.24)

//In the large pilot unit
ubp=c*((uo-umf)/100)+0.35*(g*dtp)^0.5;//Velocity using Eqn.(5.22)
zsp=60*(dtp*100)^0.175;//Height using Eqn.(5.24)

//OUTPUT
printf('\nCondition at which bubbles transform into slugs');
mprintf('\nFor tha small bench unit\n\t\tVelocity=%fm/s\n\t\tHeight above distributor plate=%fm',ubb,zsb/100);
mprintf('\nFor tha large pilot unit\n\t\tVelocity=%fm/s\n\t\tHeight above distributor plate=%fm',ubp,zsp/100);

//====================================END OF PROGRAM ======================================================

