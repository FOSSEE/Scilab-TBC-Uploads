//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-5, Example 1, Page 126
//Title: Charactersitics of a Single Bubble
//==========================================================================================================
clear
clc

//INPUT
dt=60;//ID of tube in cm 
dp=300;//Size of particles of bed in micrometers
umf=3;//Velocity at minimum fluidization condition in cm/s
ephsilonmf=0.5;//Void fraction of bed at minimum fluidization condition
db=5;//Diameter of bubble in cm
g=980;//Acceleration due to gravity in cm/s^2

//CALCULATION
//Computation of rise velocity of bubble
if (db/dt)<0.125    then ubr=(0.711*((g*db)^0.5));//Rise velocity by Eqn.(3)
elseif (db/dt)<0.6  then ubr=(0.711*((g*db)^0.5))*1.2*exp(-1.49*(db/dt));//Rise velocity by Eqn.(4)   
end

//Computation of cloud thickness
Rb=db/2;//Radius of bubble
uf=umf/ephsilonmf;//Velocity of emulsion gas
Rc=Rb*((ubr+(2*uf))/(ubr-uf))^(1/3);//Radius of cloud by Eqn.(6)

//OUTPUT
mprintf('\nThe rise velocity of the bubble=%fcm/s',ubr);
mprintf('\nThe cloud thickness=%fcm',Rc-Rb);
mprintf('\nFrom Fig.8(page 124)comparing fw vs dp, for dp = %f micrometer, wake fraction = 0.24',dp);

//====================================END OF PROGRAM ======================================================