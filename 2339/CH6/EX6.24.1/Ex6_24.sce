clc
clear

r=8;
T1=310;     //in K
T3=1600;        //in K
G=1.4;
Cv=0.717;

//For process 1-2
T2=T1*(r^(G-1));

//Now Heat Supplied
Qs=Cv*(T3-T2);
printf('Heat Supplied= %2.1f kJ/kg',Qs);
printf('\n');

//Efficiency of Cycle
Eff=100*[1-(1/(r^(G-1)))];
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');
