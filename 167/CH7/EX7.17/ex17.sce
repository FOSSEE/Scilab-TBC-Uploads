//ques17
//Entropy Generation in a Wall
clear
clc
//Entropy change of wall is 0 during process since the state and thus the entropy of the wall do not change anywhere
Qout=1035;//W
Qin=1035;//W
Tout=278;//K
Tin=293;//K
Sgen=Qout/Tout-Qin/Tin;//in W/K
printf('Entropy of generation = %.3f W/K',Sgen);
//To determine rate of total entropy generation, we extend the system to include the regions on both sides of the wall that experience a temperature change. Then one side of the system boundary becomes room temperature while the other side becomes the temperature of the outdoors
Tout=273;//K
Tin=300;//K
Sgen=Qout/Tout-Qin/Tin;//in W/K
printf('\n Entropy of generation = %.3f W/K',Sgen);