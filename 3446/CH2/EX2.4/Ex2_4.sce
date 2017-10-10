// Exa 2.4 
 //To find traffic intensity.

clc;
clear all;

Ht=120;  //Holding time in seconds
CR=2;  //call rate per hour

//solution
//Traffic Intensity(Erlangs) = call rate * Holding time(in hrs));
I=CR*Ht/3600; //Traffic Intensity
printf('Traffic Intensity is %.4f Erlangs = %.1f CCS \n',I,I*36);



