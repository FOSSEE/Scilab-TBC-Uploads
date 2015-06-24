//ques2
//Entropy Generation during Heat Transfer Processes
clear
clc
//(a)Sink at 500K
Qsource=-2000//heat of source in kJ
Qsink=2000//heat of sink in kJ
Tsource=800//temperature of source in K
Tsink=500//temperature of sink in K
Ssource=Qsource/Tsource//entropy of source in kJ/K
Ssink=Qsink/Tsink//entropy of surce in kJ/K
Sgen=Ssource+Ssink;//entropy of generation of the process in kJ/K
printf(' (a) Enthalpy of generation = %.1f kJ/K \n', Sgen);

//(b) for sink of T=750 K
Qsource=-2000//heat of source in kJ
Qsink=2000//heat of sink in kJ
Tsource=800//temperature of source in K
Tsink=750//temperature of sink in K
Ssource=Qsource/Tsource//entropy of source in kJ/K
Ssink=Qsink/Tsink//temperature of sink in kJ/K
Sgen=Ssource+Ssink;//entropy of generation of system in kJ/K
printf('  (b) Enthalpy of generation = %.1f kJ/K',Sgen);