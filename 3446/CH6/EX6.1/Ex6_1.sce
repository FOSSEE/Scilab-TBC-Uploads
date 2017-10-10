// Exa 6.1
// To calculate spectral efﬁciency.

clc;
clear all;

Area=8;  //in km^2
Cover=4000;// in km^2
CallBH=1.2;  //Avg calls during BH
HT=100; // Avg holding time in sec
Block=0.02; //Blocking=2%
N=4;//Frequency reuse factor
Spectrum=12.5;// in MHz
CHBW=200;// in kHz
User_CH=8;//No of  users per RF channel

//solution
RFCH=Spectrum*1000/CHBW;
TCH=int(RFCH)*User_CH;
SigCH=3;//No of signalling channels per cell
TCH_cell=TCH/N-SigCH;
Cells=Cover/Area;
OffLoad=108.4;  // in Erlangs
printf('Using Erlang-B Tables, Total traffic offered by %d channels at 0.02 blocking = %.1f Erlangs/cell \n ',TCH_cell,OffLoad*(1-Block));
CarLoad=OffLoad*(1-Block);
Calls_hr_cell=CarLoad*3600/HT;
MaxUser_hr_cell=Calls_hr_cell/CallBH;
Seff=CarLoad*Cells/(Spectrum*Cover);
printf('Spectral Efficiency is %.2f Erlangs/MHz/km^2\n',Seff);
