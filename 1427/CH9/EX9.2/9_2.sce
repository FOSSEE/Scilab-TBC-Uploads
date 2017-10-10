//ex-2
//Calculating mass of eutectic
clc
M=1;//Mass of alloy given (in kg)
P1=25;//Percentage of Cd in the alloy
M=M*1000;//Mass of alloy given (in g)
m1=(P1/100)*M;//Mass of Cd in alloy (in g)
p1=40;//Pecentage of Cd in eutectic system
p2=100-p1;//Pecentage of Bi in eutectic system
mass=(m1*p2)/p1;//Mass of Bi corresponding to m1 of Cd (in g)
total_mass=m1+mass;//Total mass of eutectic in the alloy (in g)
printf("Total mass of eutectic in 1kg of alloy = %d g.",total_mass);
