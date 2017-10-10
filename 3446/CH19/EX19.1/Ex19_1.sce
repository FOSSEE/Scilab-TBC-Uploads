// Exa 19.1
// To calculate the hopping rate of bluetooth, No of bits transmitted in one slot, efficiency of packet transmission, and No of times a packet is sent.

clc;
clear all;

SS=80; //Frame length of HV3 voice packet
R=64*10^3; //Data rate in bps

//solution
TS=240; //No of bits carried in a slot
//From table 19.3:Bluetooth air interface details, we get Frequency hopping rate as 1600hopes/second

//From table 19.5, we can note that for HV3, No of slots are 1 and carry in all(80(user voice sample)+160(parity bits))=240 bits in one slot packet
HR=1600; //hopes/second
Eff=SS/TS;
x=R/SS;  //x is number of times a packet is sent
printf('Hopping rate is %d hopes/sec \n ',HR);
printf('No of bits transmitted in one slot are %d \n ',TS);
printf('Efficiency of packet transmission is %.4f \n ',Eff);
printf('Number of times a packet is sent is equal to %d \n ',x);
