// Exa 2.1
// TO get Gos during BH(Busy Hour).

clc;
clear all;

LC=10; //Lost calls
CC=380; //Carried calls

// soution
OC=LC+CC;  //Total offered calls
//Gos=Blocking probability=(number of Lost calls/Total number of offered calls)
Gos=LC/OC;
printf('The Gos during busy hour is %f \n ', Gos);

