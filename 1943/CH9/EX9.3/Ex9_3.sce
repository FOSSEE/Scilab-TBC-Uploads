
clc
clear
//Input data
F=190;//Each fission of U-235 yeilds in MeV
a=85;//Assuming the Neutrons absorbed by U-235 cause fission in percentage
b=15;//Non fission capture to produce an isotope U-236 in percentage
Q=3000;//The amount of thermal power produced in MW

//Calculations
E=F*1.60*10^-13;//Each fission yields a useful energy in J
N=1/E;//Number of fissions required 
B=[(10^6)*(N*86400)]/(a/100);//One day operation of a reactor the number of U-235 nuclei burned is in absorptions per day
M=(B*235)/(6.023*10^23);//Mass of U-235 consumed to produce one MW power in g/day
M1=M*3;//Mass of U-235 consumed to produce 3000 MW power in g/day

//Output
printf('The fuel consumed of U-235 per day = %3.1f g/day ',M1)
