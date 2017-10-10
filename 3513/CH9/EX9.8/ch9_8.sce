//determine the reliability of the total system for 150 hrs. of operation
//page no 221
clear
clc;
RS=0.9;
RM=0.92;
RC=0.85;
RB=0.95;
RP=0.99;
Rf=0.95;
Rb1=0.6686;
Rb2=0.6686;
Rblower1=RS*RM*RC*RB;
Rblower2=Rblower1;
Rblower=1-((1-Rb1)*(1-Rb2));
Rsystem=Rblower*RP*Rf;
mprintf("Rsystem = %.4f \n",Rsystem);
