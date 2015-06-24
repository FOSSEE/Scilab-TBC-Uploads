//ques21
//Entropy Generation Associated with Heat Transfer
clear
clc
//(a) Water undergoes an internally reversible isothermal process
Q=-600;//kJ
Tsys=100+273;//K
Ssys=Q/Tsys;//kJ/K
printf('(a) Entropy of system = %.2f kJ/K \n',Ssys);

//(b) The entropy generation is entirely due to irreversible heat transfer through a finite temperature difference
Qout=600;//heat output in kJ
Tb=25+273//Temperature in K
Sgen=Ssys+Qout/Tb;//Entropy generation in kJ/K
printf(' (b) Entropy of generation = %.2f kJ/K',Sgen);
