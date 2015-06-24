//Calculate the maximum voltage gain and bandwidth of multistage amplifier
clear;
clc;
//soltion
//FUNCTIONS

function [z]=prll(r1,r2)//Function for the parallel combination of resistor
    z=r1*r2/(r1+r2);
endfunction

//given
rin=10*10^6;//ohm         //input resistance of JFET
Rd=10*10^3;//ohm
Rs=500;//ohm
Rg=470*10^3;//ohm
Rl=470*10^3;//ohm
Cc=0.01*10^-6;//Farad
Csh=100*10^-12;//Farad
Cs=50*10^-6;//Farad
rd=100*10^3;//ohm
gm=2*10^-3;//S
Rac2=prll(Rd,Rl);
Rac1=prll(Rd,Rg);
Req=prll(rd,prll(Rd,Rl));
Am=ceil(gm*Req);
Am2=Am*Am;       //Voltage gain of two stage amplifier
printf("Voltage gain of two stage amplifier= %.0f\n",Am2);
R_=prll(rd,Rd)+prll(Rg,rin);
f1=1/(2*%pi*Cc*R_);      //lower cutoff frequency
f1_=f1/(sqrt(sqrt(2)-1));
f2=1/(2*%pi*Csh*Req);      //upper cutoff frequency
f2_=f2*(sqrt(sqrt(2)-1));
BW=f2_-f1_;
printf("Bandwidth= %.1f kHz",BW/1000);

//There is a slight error in f1 due to use of R'(here R_)=479 kΩ and in f2 due to approaximation of Req there is a slight variation
