//Exa:2.8  
// To find average busy hour call attempts(BHCA's).

clc;
clear all;

minutes=500; //No of minutes used per month per user
Twork=0.9; //Traffic During Work day
TBH=0.1;  //Traffic during busy hour
Days=20;  //No of workdays in a month
MeanHT=100;  //Mean holding time(in secs)

//solution
//Avg BH usage per subscriber (in minutes) = minutes*Twork(TBH/Days);
//BHCAs=trafﬁc (in Erlangs) *3600/(meanHT)

Traffic=minutes*Twork*(TBH/Days);
BHCAs=(Traffic/60)*(3600/MeanHT);

printf('Average Busy Hour call attempts are %.2f ',   BHCAs);
