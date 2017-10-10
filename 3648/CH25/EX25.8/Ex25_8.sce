//Example 25_8
clc();
clear;
//To find the energy of photonn each case
dist1=1240*10^-9      //units in meters
lamda1=100      //units in meters
e1=dist1/lamda1     //Units in eV
dist2=1240      //units in nano meters
lamda2=550      //units in meters
e2=dist2/lamda2     //Units in eV
dist3=1240      //units in nano meters
lamda3=0.2      //units in meters
e3=dist3/lamda3     //Units in eV
printf("The energy with radio waves is E1=")
disp(e1)
printf("eV\n")
printf("The energy with green light is E2=")
disp(e2)
printf("eV\n")
printf("The energy with photon is E3=")
disp(e3)
printf("eV\n")
