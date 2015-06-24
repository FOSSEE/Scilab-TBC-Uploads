//ques19
//Entropy Generated when a Hot Block Is Dropped in a Lake
clear
clc
//(a) The entropy change of the iron block
m=50;//mass in kg
Cavg=0.45;//average specific heat in kJ/kg
T2=285;//final temp in K
T1=500;//initial temp in K
Siron=m*Cavg*log(T2/T1);
printf('(a) Entropy change of iron block = %.2f kJ/K \n',Siron);

//(b)
//The temperature of the lake water remains constant during this process at 285 K
Qout=m*Cavg*(T1-T2);//heat transfer from iron to lake in kJ
S=Qout/T2;//Entropy change of lake in kJ/K
printf(' (b) Entropy change of the lake = %.2f kJ/K \n',S);

//(c)
//The entropy generated during this process is determined by applying an entropy balance on the system
Tb=285;//temp of block in K
Sgen=Qout/Tb+Siron;//Entropy generation in kJ/K
printf(' (c) Entropy generated = %.2f kJ/K \n',Sgen);
