//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-5, Example 2, Page 132
//Title: Initial Bubble Size at a Distributor
//==========================================================================================================
clear
clc

//INPUT
uo=15;//Superificial gas velocity in cm/s
umf=1;////Velocity at minimum fluidization condition in cm/s
lor=2;//Pitch of perforated plate in cm
g=980;//Acceleration due to gravity in cm/s^2
//CALCULATION
//Case(a) For porous plate
dbo1=(2.78/g)*(uo-umf)^2;//Initial bubble size using Eqn.(19)

//Case(b) For Perforated plate
Nor=(2/sqrt(3))*(1/lor)^2;//Number of orifices in cm^-2
dbo2=(1.30/(g^0.2))*((uo-umf)/Nor)^0.4;//Initial bubble size using Eqn.(15) assuming inital bubble size is smaller than hole spacing

//OUTPUT
printf('\nCase(a) For porous plate');
printf('\n\tInitial bubble size=%fcm',dbo1);
printf('\nCase(b) For Perforated plate');
printf('\n\tInitial bubble size=%fcm',dbo2);
printf('\n\tSince %f<%f, the equation used is correct.',dbo2,lor);

//====================================END OF PROGRAM ======================================================