
//scilab 5.4.1
//windows 7 operating system
//chapter 2:Electron Emission from Solids
clc
clear
//given
//Ia=(K*(Va^(3/2)));Ia=space charge limited current ,Va=anode voltage,K=proportionality constant
Ia1=300//Ia1=space charge limited current of 1st anode in A
Ia2=200//Ia2=space charge limited current of 2nd anode in A
Va1=200//Va=anode voltage of 1st anode in V
Va2=(Va1*((Ia2/Ia1)^(2/3)))//Va2=anode voltage of 2nd anode in V
disp("V",Va2,"Va2=")
