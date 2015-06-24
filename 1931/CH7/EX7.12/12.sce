clc
clear
//INPUT DATA
r=2.7*10^-8//electrical resistivity of aluminium in ohm metre
AW=26.98//atomic weight of aluminium
d=2.7*10^3//density of volume in Kg/m^3
R=60*10^-3//resistance in W
l=5//length of aluminium wire in m
i=15//aluminuim wire carries a current in A
fe=3//number of free electrons 
AV=6.023*10^26//avagadro no in mole^-1
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
n=(AV*d*fe)/AW//density of electrons per unit volume in electrons/m^-3
z=(1/(n*e*r))/10^-3//mobility of the charge in m^2V^-1S^-1 * 10^-3
E=((i*R)/l)//free electron concentration in V/m
vd=(z*E)/(10^-4*10^3)//drift velocity in m s^-1 * 10^-4

//OUTPUT
printf('Free electron concentration in aluminium is %3.2f in V/m \n Mobility of the charge is %3.3f*10^-3 in m^2 V^-1 S^-1 \n The drift velocity of electrons is %3.3f*10^-4 in m s^-1',E,z,vd)
