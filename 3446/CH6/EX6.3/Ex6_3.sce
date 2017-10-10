// Exa 6.3
// To calculate spectral efficiency of TDMA.

clc;
clear all;

Tf=40;  //Frame duration in msec
Mt=6;   // Frames per slot
Bu=30; //bandwidth(KHz) of an individual user during his or her time slot
Nu=395;//  number of users sharing the same time slot in the system, but having access to different frequency sub-bands
Bw=12.5; // in MHz
DR=16.2;//Data rate in kbps
FDur=40; // Frame duration in msec
slots=6; //No of slots per time frame
IndiRate=16.2; //Individual data rate in kbps
Srate=13;  //Speech rate in kbps

//solution
TimeSlot=(Srate/IndiRate)*(FDur/slots);
Seff=TimeSlot*slots*Bu*Nu/(FDur*Bw*1000);
printf('Multiple access spectral efficiency of TDMA is %.2f\n ',Seff);
printf('The overhead portion of the frame is %d percent \n ',round((1-Seff)*100));
