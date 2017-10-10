// Exa 5.3
// To calculate
// A) The number of calls per cell site per hour (i.e., call capacity of cell).
// B) Mean S/I ratio for cell reuse factor equal to 4, 7 and 12.

clc;
clear all;

VCH=395;//Total voice channels
CallHT=120;//average call holding time in sec
Blocking=0.02;// 2%
PPL=4;  //propogation path loss coefficient
N1=4      //reuse factor
N2=7;     //reuse factor
N3=12;    //reuse factor

//solution
No_of_VCH1=VCH/N1;  //for reuse factor N1
No_of_VCH2=VCH/N2;  //for reuse factor N2
No_of_VCH3=VCH/N3;  //for reuse factor N3
printf('\nNO of voice channels for N=4 are %d',round(No_of_VCH1));
printf('\nNO of voice channels for N=7 are %d',round(No_of_VCH2));
printf('\nNO of voice channels for N=12 are %d\n',round(No_of_VCH3));
disp("Using the Erlang-B trafﬁc table (see Appendix A) for 99 channels with 2% blocking, we ﬁnd a trafﬁc load of 87 Erlangs.");
TrafLoad1=87.004;
Carryload1=(1-Blocking)*TrafLoad1;
disp("Using the Erlang-B trafﬁc table (see Appendix A) for 56 channels with 2% blocking, we ﬁnd a trafﬁc load of 45.88 Erlangs.");
TrafLoad2=45.877;
Carryload2=(1-Blocking)*TrafLoad2;
disp("Using the Erlang-B trafﬁc table (see Appendix A) for 33 channels with 2% blocking, we ﬁnd a trafﬁc load of 24.6 Erlangs.");
TrafLoad3=24.629;
Carryload3=(1-Blocking)*TrafLoad3;
// To find cell capacity
Ncall1=Carryload1*3600/CallHT;//Calls per hour per cell 
Ncall2=Carryload2*3600/CallHT;
Ncall3=Carryload3*3600/CallHT;
printf('\ncalls per hour per cell for N=4 are %d',round(Ncall1));
printf('\ncalls per hour per cell for N=7 are %d',round(Ncall2));
printf('\ncalls per hour per cell for N=12 are %d  \n',Ncall3);
// To find S BY I
// N=(1/3)[6*(S/I)]^(2/PPL)
S_I1=10*(PPL/2)*(log10(N1)-log10(1/3)-(2/PPL)*log10(6));//Mean S/I (dB)

S_I2=10*(PPL/2)*(log10(N2)-log10(1/3)-(2/PPL)*log10(6));
S_I3=10*(PPL/2)*(log10(N3)-log10(1/3)-(2/PPL)*log10(6));

printf('\nMean S/I(dB) for N=4 is %.1f',S_I1);
printf('\nMean S/I(dB) for N=7 is %.1f',S_I2);
printf('\nMean S/I(dB) for N=12 is %.1f',S_I3);
