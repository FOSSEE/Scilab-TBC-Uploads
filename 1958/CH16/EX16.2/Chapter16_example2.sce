clc
clear
//Input data
a=20//Atomic number of Ca
m=40//mass number of Ca
M=39.962591//Mass of Ca nucleus in u
mp=1.007276//Mass of proton in AMU
mn=1.008665//Mass of neutron in AMU

//Calculations
BE=(1/m)*((a*mp)+(a*mn)-M)*1000//BE per nucleon in MeV

//Output
printf('BE per nucleon is %3.6f MeV',BE)
