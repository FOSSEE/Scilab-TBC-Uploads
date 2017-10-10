// Exa 19.2
// To find the associated data rate.

clc;
clear all;

R=136; // bits per slot
SR=800; // no of slots per second

//solution
// A symmetric 1-slot DM1 link is setup  between a master and a slave
AR=R*SR; //Data rate in bps

printf('Associated data rate is %0.1f kbps \n ',AR/1000);
