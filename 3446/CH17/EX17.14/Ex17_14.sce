// Exa 17.15
// To calculate bandwidth of Iub interface.

clc;
clear all;

Users=350;//no of users supported
ExpectedTraf=1.8; // From section 17.7 (in Kbps)
BHTraf=1.785;//Busy hour traffic in kbps
BTS=180;

//solution
IubBW=(ExpectedTraf*Users*BHTraf)/1000;  // in Mbps
TotalBW=BTS*IubBW;
printf('Required total bandwidth of Iub Interface is %.2f Mbps \n ',TotalBW);
