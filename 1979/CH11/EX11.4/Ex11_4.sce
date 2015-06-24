//chapter-11 page 505 example 11.4
//==============================================================================
clc;
clear;

//For a guided missile tracking radar
Pt=400000;//transmitted power in W
prf=1500;//pulse repitition frequency in pps(pulse per sec)
tw=0.8*10^(-6);//pulse width in sec
c=3*10^8;//Velocity of light in m/sec

//CALCULATION
Runamb=(c/(2*prf))/1000;//Unambiguous range in km
dc=tw/(1/prf);//Duty cycle
Pav=Pt*dc;//Average power in W
n1=1;
BW1=(n1/tw)/10^6;//Suitable BW in MHz for n=1
n2=1.4;
BW2=(n2/tw)/10^6;//Suitable BW in MHz for n=1.4

//OUTPUT
mprintf('\nUnambiguous range is Runamb=%3.0f km \nDuty cycle is dc=%1.4f \nAverage power is Pav=%3.0f W',Runamb,dc,Pav);
disp('For efficiency n=1,suitable bandwidth in MHz is');
disp(BW1);
disp('For efficiency n=1.4,suitable bandwidth in MHz is');
disp(BW2);

//=========================END OF PROGRAM===============================

