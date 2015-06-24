//To Determine the necessary realy and recloser coordination
//Page 542
clc;
clear;

//For Recloser
InstT=0.03; //From Curve A //Instaneous Time
TimeD=0.17; //From Curve B //Time Delay
//For Relay
PickU=0.42; //From Curve C //Pick Up 
Reset=(1/10)*60; //Assuming a 60 s reset time for the relay with number 10 time dial setting
RecloserOT=1; //Assumed Recloser Open Time

RelayCTI=InstT/PickU; //Relay Closing Travel during instantaneous operation
RelayRTI=(-1)*RecloserOT/Reset; //Relay Reset Travel during instantaneuos

RelayCTD=TimeD/PickU;
RelayRTD=(-1)*RecloserOT/Reset; //Relay Reset Travel during trip
NetRelayTravel=RelayCTD-RelayRTD;

printf('\nDuring Instantaneous Operation\n')
printf('|Relay Closing Travel| < |Relay Rest Travel|\n')
printf('|%g percent| < |%g percent|\n',RelayCTI*100,RelayRTI*100)

printf('\nDuring the Delayed Tripping Operations\n')
printf('Total Relay Travel is from:\n')
printf('%g percent to %g percent to %g percent\n',RelayCTD*100,RelayRTD*100,RelayCTD*100)
printf('Since this Net Total Relay Travel is less than 100 percent, \nthe desired recloser to relay coordination is accomplished\n')
