//Exa 7.2
clc;
clear;
close;
//given data :
delVDS=1.5;//in Volt
delID=120;//in uA
delID=120*10^-6;//in A
rd=delVDS/delID;//in Ohm
disp(rd*10^-3,"AC drain resistance of JFET in Kohm : ");