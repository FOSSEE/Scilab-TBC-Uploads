// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 12, Example 1")
//The pressure in the pipeline that transports helium gas at a rate of 4kg/s is maintained at pressure(p)=1 atm or 101*10^3 pascal.
//The internal daimeter of tube is (di)=6mm or .006m
//The temprature of both air and helium is (T)=25°C or 298 K.
//The diffusion coefficient of helium in air at normal atmosphere is(Dab)=7.20*10^-5 m^2/s
//The venting tube extends to a length(L)=20m in the atmosphere.
di=.006;
disp("The flow area is given by A=(pi*di^2)/4 in m^2")
A=(%pi*di^2)/4
p=101*10^3;;
R=8.31*10^3;//gas constant
T=298;
Dab=7.20*10^-5;
L=20;
//c is the molar concentration
disp("The molar concentration of mixture which is constant throughout is given by c=p/(R*T)")
c=p/(R*T)
//helium has been considered as species A so (helium mole fraction at the bottom of the tube)is Yao=1 and (helium mole fraction at the bottom of the tube)is Yal=0
Yal=0;
Yao=1;
//Nhe and Nair are molar rate of helium and air respectively
disp("Nhe=Nair=(A*c*Db*(Yao-yal))/L in kmol/sec")
Nair=(A*c*Dab*(Yao-Yal))/L
Nhe=Nair;
//Molecular weights of air and helium are 29kg/kmol and 4 kg/kmol respectively.
Mhe=4;
Mair=29;
//mass flow rate of helium is mhe
disp("mass flow rate of helium is given by m=Mhe*Nhe in kg/sec ")
mhe=Mhe*Nhe
//mass flow rate of air is mair
disp("mass flow rate of air is given by m=Mair*Nair in kg/sec ")
mair=Mair*Nair
