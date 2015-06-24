//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.2
//calculation of the volume of the cube outside the water

//given data
m=700*10^-3//mass(in kg) of the cube
l=10*10^-2//length(in m) of the cube
rho=1000//density of water(in kg/m^3)

//calculation
V=m/rho//weight of displaced water = V*rho*g
Vtotal=l^3//total volume of the cube
Vout=Vtotal-V//volume of the cube outside the water

printf('the volume of the cube outside the water is %d cm^3',Vout*10^6)
