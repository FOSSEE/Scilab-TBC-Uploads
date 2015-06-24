//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-3, Example 4, Page 91
//Title: Prediction of flow regime
//==========================================================================================================
clear
clc

//INPUT
rhos=1.5;//Density of Solid in g/cc
uo1=40; uo2=80;//Superficial gas velocity in cm/s
dp1=0.006; dp2=0.045;//Particle size in centimeter
rhog1=1.5E-3; rhog2=1E-3; //Density of gas in g/cc
myu1=2E-4; myu2=2.5E-4;//Viscosity of air in g/cm s
g=980;//Acceleration due to gravity in square cm/s^2

//CALCULATION
//for smaller particles
dpstar1=dp1*((rhog1*(rhos-rhog1)*g)/myu1^2)^(1/3);//Calculation of dimensionless particle diamter Eq.(31)
uostar1=uo1*((rhog1^2)/((myu1)*(rhos-rhog1)*g))^(1/3);
uostar2=uo2*((rhog1^2)/((myu1)*(rhos-rhog1)*g))^(1/3);//Calculation of dimensionless superficial gas velocity Eq.(32)

//for larger particles 
dpstar2=dp2*((rhog2*(rhos-rhog2)*g)/myu2^2)^(1/3);//Calculation of dimensionless particle diamter Eq.(31)
uostar3=uo1*((rhog2^2)/((myu2)*(rhos-rhog2)*g))^(1/3);
uostar4=uo2*((rhog2^2)/((myu2)*(rhos-rhog2)*g))^(1/3);//Calculation of dimensionless superficial gas velocity Eq.(32)


//OUTPUT
printf('\nFor particle of size %f centimeter',dp1);
mprintf('\nThe dimensionless particle diameter = %f',dpstar1);
mprintf('\nThe dimensionless superficial gas velocity = %fcm/s(for superficial gas velocity of %fcm/s)',uostar1,uo1);
mprintf('\nThe dimensionless superficial gas velocity = %fcm/s(for superficial gas velocity of %fcm/s)',uostar2,uo2);
mprintf('\n\nFrom Fig.16(page 89)comparing u*=%f vs dp*=%f',uostar1,dpstar1);
mprintf('\nFor Superficial gas velocity =%f \nMode of Fluidization:Onset of turbulent fluidization in an ordinary bubbling bed',uo1);
mprintf('\nFrom Fig.16(page 89)comparing u* =%f vs dp* =%f',uostar2,dpstar1);
mprintf('\nFor Superficial gas velocity =%f \nMode of Fluidization:Fast fluidization(requires a circulating solid system)',uo2);
printf('\n\nFor particle of size %f centimeter',dp2)
mprintf('\nThe dimensionless particle diameter = %f',dpstar2);
mprintf('\nThe dimensionless superficial gas velocity = %fcm/s(for superficial gas velocity of %fcm/s)',uostar3,uo1);
mprintf('\nThe dimensionless superficial gas velocity = %fcm/s(for superficial gas velocity of %fcm/s)',uostar4,uo2);
mprintf('\n\nFrom Fig.16(page 89)comparing u*=%f vs dp*=%f',uostar3,dpstar2);
mprintf('\nFor Superficial gas velocity =%f \nMode of Fluidization:Bublling Fluidization',uo1);
mprintf('\nFrom Fig.16(page 89)comparing u* =%f vs dp* =%f',uostar4,dpstar2);
mprintf('\nFor Superficial gas velocity =%f \nMode of Fluidization:Bubbling Fluidization',uo2);

//====================================END OF PROGRAM ======================================================