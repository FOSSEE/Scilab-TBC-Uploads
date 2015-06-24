//Exa 4.9
clc;
clear;
close;
format('v',7);

//Given Data :
HeatTransfer=2;//KJ/degreeCentigrade(it is d'Q/dT)
T1=27+273;//K
T2=127+273;//K
deltaS=integrate('HeatTransfer/T','T',T1,T2);//KJ/K
disp(deltaS,"Entropy change when heat is transfered to system in KJ/K : ");
disp(deltaS,"Entropy change when end states are achieved by stirring action in KJ/K : ");
