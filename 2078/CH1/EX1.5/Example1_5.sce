//Exa 1.5
clc;
clear;
close;
format('v',6);
//Given data :
oldkVA_B=30000;//kVA
oldkV_B=11;//kV
oldZpu=0.2;//pu
newkVA_B=50000;//kVA
newkV_B=33;//kV
newZpu=oldZpu*newkVA_B/oldkVA_B*(oldkV_B/newkV_B)^2;//pu
disp(newZpu,"New Per unit impedence(pu) :");
