//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-6, Example 1, Page 150
//Title: Bubble Size and Rise Velocity in Geldart A Beds
//==========================================================================================================
clear
clc

//INPUT
z=0.5;//Height of bed in m
dt=0.5;//ID of tube in m
rhos=1.6;//Density of catalyst in g/cm^3
dpbar=60;//Averge catalyst diameter in micrometer
umf=0.002;//Velocity at minimum fluidization condition in m/s
uo=0.2;//Superficial velocity in m/s
dor=2;//Diameter of orifice in mm
lor=20;//Pitch of perforated plate in mm
g=9.80;//g=980;//Acceleration due to gravity in m/s^2

//CALCULATION
//Method 1. Procedure using Eqn.(10) & Eqn.(11)
db=(0.035+0.040)/2;//Bubble size at z=0.5m from Fig.7(a) & Fig.7(b)
ub1=1.55*((uo-umf)+14.1*(db+0.005))*(dt^0.32)+0.711*(g*db)^0.5;//Bubble velocity using Eqn.(10) & Eqn.(11)

//Method 2. Werther's procedure
si=0.8;//From Fig.6 for Geldart A solids 
ub2=si*(uo-umf)+(3.2*(dt^(1/3)))*(0.711*(g*db)^0.5);//Bubble velocity using Eqn.(9)

//OUTPUT
printf('\nMethod 1. Procedure using Eqn.(10) & Eqn.(11)');
mprintf('\n\tDiameter of the bubble=%fm',db);
mprintf('\n\tRise velocity of the bubble=%fm/s',ub1);
printf('\nMethod 2. Werthers procedure');
mprintf('\n\tDiameter of the bubble=%fm',db);
mprintf('\n\tRise velocity of the bubble=%fm/s',ub2);

//====================================END OF PROGRAM ======================================================
