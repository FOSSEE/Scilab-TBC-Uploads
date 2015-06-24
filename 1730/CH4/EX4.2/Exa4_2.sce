//Exa 4.2
clc;
clear;
close;
//given data :
delVDS=1.5;//in Volt
delID=120;//in uAmpere
delID=delID*10^-6;//in Ampere
rd=delVDS/delID;//in Ohm
disp(rd*10^-3,"AC drain Resistance of JFET in Kohm : ");