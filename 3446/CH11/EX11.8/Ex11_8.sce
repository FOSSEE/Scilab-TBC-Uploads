// Exa 11.8
// To determine a possible pair of the SOFT-SLOPE and ADD-INTERCEPT values that will trigger the mobile station to send a PSMM to the base station and if the mobile station is IS-95 compliant, ﬁnd the value of T-COMP that could trigger the mobile station to generate a PSMM.

clc;
clear all;

P1=-95; //pilot1 in dBm
P2=-100; //pilot2 in dBm
P3=-101; //pilot3 in dBm
P4=-105; //pilot4 in dBm
P5=-102; //pilot in dBm
NoiseP=-107; //Receiver sensitivity(dBm)
Tadd=-13; //dB

//solution
//Pcj = received power of the jth pilot in the candidate set
// Pai= received power of the ith pilot in the active set 
Pa1=P1-NoiseP;
Pa2=P2-NoiseP;
Pa3=P3-NoiseP;
Pa4=P4-NoiseP;
Pc5=P5-NoiseP;

X=10*log10(10^(0.1*Pa1)+10^(0.1*Pa2)+10^(0.1*Pa3)+10^(0.1*Pa4)+10^(0.1*Pc5));   
disp("Max {14.22 *(SOFT-SLOPE)+ (ADD-INTERCEPT),-13  }<=5");
disp("Thus we have two equations as follows");
disp("14.22*SOFT-SLOPE+ADD-INTERCEPT>=-13 and");
disp("14.22*SOFT-SLOPE+ADD-INTERCEPT<=5");
disp(" Solving these equations, we get SOFT-SLOPE= 0.5 and ADD-INTERCEPT=-4");
disp("For an IS-95-compliant mobile station (Pcj-Pai)>=0.5*T-COMP");
disp("Since P1>P2>P3>P4, we replace P4");
T_COMP=(P5-P4)/0.5;
disp("");
printf('The value of T-COMP that could trigger the mobile station to generate a PSMM should be <= %d dB (<= %d) .\n ',T_COMP,round(10^(0.1*T_COMP)));

