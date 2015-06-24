clc
clear

T1=330;     //in K
T2=876;     //in K
T3=2223;        //in K
T4=1143;        //in K
P1=1;       //in bar
G=1.4;

Cv=0.718;
Cp=1.005;
Eff=100*[1-((Cv*(T4-T1))/(Cp*(T3-T2)))];
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');

//For Process 1-2
P2=P1*[(T2/T1)^(G/(G-1))];
printf('Maximum Pressure %2.1f bar',P2);
printf('\n');
