
clc
clear
//Input data
p=1;//The density of water in g/cm^3
sch=0.332;//The microscopic capture cross section of hydrogen in barn
sco=0.0002;//The microscopic capture cross section of oxygen in barn

//Calculations
N=(6.023*10^23)*p/18;//Number of molecules of water per cm^3
scw=(2*N*sch*10^-24)+(N*sco*10^-24);//The microscopic capture cross section of water in cm^-1

//output
printf('The microscopic capture cross section of water = %3.4f cm^-1 ',scw)
