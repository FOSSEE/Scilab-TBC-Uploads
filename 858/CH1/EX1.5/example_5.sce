clc
clear 

printf("example 1.5 page number 24\n\n")

//to calculate amount of CO2 released by water
p=746    //in mm Hg
H=1.08*10^6   //in mm Hg, Henry's constant

x= p/H;    //mole fraction of CO2
X=x*(44/18);   //mass ratio of CO2 in water

initial_CO2 = 0.005;     //kg CO2/kg H20
G=1000*(initial_CO2-X);

printf("CO2 given up by 1 cubic meter of water = %f kg CO2/cubic meter H20",G)
