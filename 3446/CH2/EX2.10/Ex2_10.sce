//Exa_2.10 
// TO find ABS/BH(average busy season per busy hour) calling rates, design cell capacity for the switch and design Erlangs.

clc;
clear all;

Rlines=15000;//Residential lines
Blines=80000;//Business lines
PWElines=5000;//PBX, WATS, and Foreign Exchange (FX) lines
CR_R=2;//Call rates for Rlines
CR_B=3;// call rates for Blines
CR_PWE=10;//call rates for PWElines
HT_R=140;//average holding time for Rlines(sec)
HT_B=160;//average holding time for Blines(sec)
HT_PWE=200;//average holding time for PWE lines(sec)
Slines=100000;// no of lines carried by switch
HD_ABS=1.5;// HD/ABS for the switch

//solution
percentR_lines=Rlines/Slines;
percentB_lines=Blines/Slines;
percentPWE_lines=PWElines/Slines;
CCSR=CR_R*HT_R/100;
CCSB=CR_B*HT_B/100;
CCSPWE=CR_PWE*HT_PWE/100;

CR=CR_R*percentR_lines+CR_B*percentB_lines+CR_PWE*percentPWE_lines;
printf('The call rate is %.1f calls per line \n ',CR);
CCS=CCSR*percentR_lines+CCSB*percentB_lines+CCSPWE*percentPWE_lines;
AvgHTperline=CCS*100/CR;
ABS_BH_calls=CR*Slines;
ABS_BH_usage=CCS/36*Slines;
printf('Design cell capacity based on HD is %d calls \n',HD_ABS*ABS_BH_calls);
printf(' DESIGN Erlangs based on HD is %d \n',round(HD_ABS*ABS_BH_usage)); 
