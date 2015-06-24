clc
clear
//INPUT DATA
ni=1.5*10^16//intrinsic charge carriers in m^-3
r1=10*10^-2//resistivity of p-type silicon in ohm m
r2=10*10^-2//resistivity of n-type silicon in ohm m
me=1350*10^-4//The mobility of the charge carrier in m^2 V^-1 s^-1
mh=480*10^-4//The hole charge carrier in m^2 V^-1 s^-1
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
Na=(1/(r1*e*mh))/10^21//The density of the intrinsic crystal for p-type in m^-3*10^21
ne=((ni^2)/(Na*10^21))/10^11//The minor carrier concentration for p-type in electrons/m^3*10^11
Nd=(1/(r2*e*me))/10^20//The density of the intrinsic crystal for n-type in m^-3*10^20
nh=((ni^2)/(Nd*10^20))/10^11//The minor carrier concentration for n-type in electrons/m^3*10^11

//OUTPUT
printf('The density of the intrinsic crystal for p-type is %3.4f*10^21 m^-3 \n The minor carrier concentration for p-type is %3.3f*10^11 electrons/m^3 \n The density of the intrinsic crystal for n-type is %3.3f*10^20 m^-3 \n The minor carrier concentration for n-type is %3.4f*10^11 holes/m^3',Na,ne,Nd,nh)
