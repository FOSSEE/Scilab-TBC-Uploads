//Determine the inductance of a three coil system

clc;
clear;
//Self inductances of A B C
L1=25;
L2=30;
L3=35;

//Mutual inductances of AB BC CA
M12=10;//Flux assist each other
M23=-15;//Flux oppose each other
M31=-10;//Flux oppose each other

La=L1+M12+M31;
Lb=L2+M12+M23;
Lc=L3+M31+M23;

Leq=1/(((La*Lb)+(Lb*Lc)+(Lc*La))/(La*Lb*Lc));

printf('The equivalent inductance for a three coil system = %g H\n',Leq)  
