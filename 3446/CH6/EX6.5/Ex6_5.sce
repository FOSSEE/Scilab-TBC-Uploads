// Exa 6.6
// To calculate frame efﬁciency and the number of channels per frame.

clc;
clear all;

Nr=2;// number of reference bursts per frame
Nt=24;  // number of trafﬁc bursts (slots) per frame(120msec)
FL=120;  //Frame length in msec
Br=148;  // number of overhead bits per reference burst
Bp=34; // number of overhead bits per preamble per slot 
Bg=8.25;//number of equivalent bits in each guard time interval 
Tf=120; // frame duration in msec
Rrf=270.83333333;  // bit rate of the RF channel in kbps
R=22.8;  //bit rate of each channel in kbps

//solution
B0=Nr*(8*Br)+Nt*(8*Bp)+(Nt+Nr)*(8*Bg);//The number of overhead bits per frame
Bt=FL*10^-3*Rrf*10^3;//The total number of bits per frame 
Eff=(1-B0/Bt)*100;
CH_Frame=(Eff/100)*Rrf/R;//No of channels/frame
printf('The frame efficiency is %.2f percent\n ',Eff);
printf('Number of channels/frame are %d\n',round(CH_Frame));
