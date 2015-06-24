clear
clc
//to find heat energy extracted from high temperature reservior per cycle
//to find heat energy discharge to low temperature reservior per cycle
//to find entropy change per cycle

//Given:
//work output
W = 120//in J per cycle
//efficiency
Ex = 75//in percent
//boiling point of water
TH = 100//in degree celsius
//freezing point of water
TL = 0//in degree celsius

//Solution:
//applying laws of thermodynamics
//applying formula for refrigeration cycle
//applying carnot cycle formula
//efficiency of carnot engine
Ec = 1-((273+TL)/(TH+273))//taking temperatures in K
Ec1 = Ec*100//in percent
//heat energy extracted from high temperature reservior per cycle
QH = W/(Ex*10^-2)//in J
//heat energy discharge to low temperature reservior per cycle
QL = QH-W//in J
delta_SH = -(QH)/(TH+273)//in J/K //taking temperatures in K
delta_SL = (QL)/(TL+273)//in J/K //taking temperatures in K
delta_SWS = 0//in J/K
//entropy change per cycle
delta_Sx = delta_SH+delta_SL+delta_SWS//in J/K
Ec1 = round(Ec1)

printf ("\n\n Efficiency of carnot engine Ec = \n\n %.3f" ,Ec);
printf ("\n\n Efficiency of carnot engine Ec = \n\n %2i percent" ,Ec1);
printf ("\n\n Heat energy extracted from high temperature reservior per cycle QH = \n\n %3i J" ,QH);
printf ("\n\n Heat energy discharge to low temperature reservior per cycle QL = \n\n %3i J" ,QL);
printf ("\n\n Entropy change per cycle delta_Sx = \n\n %.2f J/K" ,delta_Sx);
