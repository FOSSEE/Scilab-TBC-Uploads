// Exa 9.7
// To determine modulation scheme to be used and Eb/No.

clc;
clear all;

Rb=144; //data rate in kbps
BW=36; //in MHz
Pb=3*10^-5;//probability of bit error

//solution
Seff=Rb/BW;  //spectral efficiency in bps/Hz

 M=2^(Rb/BW); //since the channel is band limited
 disp("16-QAM (refer Equation 9.66) should be used as it is  more efﬁcient than 16-PSK (refer Equation 9.50)");
disp("");

//since Q[sqrt(2*Eb_No)]=(1/2)*erfc[sqrt(Eb_No)]            // refer page no 257 equ 9.35
deff('y=f(x)','y=(3/8)*erfc(sqrt((2/5)*x))-Pb');            //from eqn 9.66 and 9.35

[x,v,info]=fsolve(0.1,f);  //x=Eb_No

printf('For a rectangular constellation (refer Figure 9.12), with a Gaussian channel and matched ﬁlter reception, the calculated Eb/No value is %.1f dB\n ',10*log10(x));
