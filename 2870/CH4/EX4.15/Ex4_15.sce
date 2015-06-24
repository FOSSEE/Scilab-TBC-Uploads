clc;clear;
//Example 4.15

//given data
E=75;//in Cal/day

//calculation
Ereduced=E*365;
//The metabolizable energy content of 1 kg of body fat is 33,100 kJ
Ec=33100;
mfat=Ereduced/Ec*4.1868;
disp(mfat,'weight this person will lose in one year in kg')
