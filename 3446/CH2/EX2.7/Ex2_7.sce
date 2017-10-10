//Exa 2.8
// To find traffic per user per BH in Erlangs.

clc;
clear all;

minutes=500; //No of minutes used per month per user
Twork=0.9; //Traffic During Work day
TBH=0.1;  //Traffic during busy hour
Days=20;  //No of workdays in a month

//solution
//Avg BH usage per subscriber (in minutes) = minutes*Twork(TBH/Days);
Traffic=minutes*Twork*(TBH/Days);
printf('Traffic per user per BH is %.4f Erlangs \n',Traffic/60);
