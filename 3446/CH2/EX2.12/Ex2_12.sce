// Exa 2.12
// To calculate number of mobile subscribers supported for the given system.

clc;
clear all;

channels=50;
blocking=0.02;
HT=120;//average holding time inm sec
BHcall=1.2;// in calls  per hour

//solution
//Refering Erlang B table in appendix A, For 50 channels at 2% blocking, the offered load=40.26 Erlangs.
A=40.26;
B=A*(1-0.02); //carried load
Avgtraffic_user=BHcall*HT/3600;
No_users=B/Avgtraffic_user;
printf('NO of mobile subscribers supported are %d \n',round(No_users));
