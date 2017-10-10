// Exa 2.11
// To find offered load A and number of service channels required to handle the load

clc;
clear all;

maxcalls_hour=4000;//maximum call per hour
avgHT=160;//average holding time in sec
Gos=0.02;

//solution
A=maxcalls_hour*avgHT/3600; //offered load
printf('Offered load A = %.2f Erlangs \n ',A);
//Refering Appendix A i.e Erlang B table 
disp("For calculated Offered load and referring Erlang B table we get Service channels as 182 giving 168.3 Erlangs at 2% blocking");
