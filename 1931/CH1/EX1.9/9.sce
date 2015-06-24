clc
clear
//INPUT DATA
V=1000//volume of hall in m^3
S=400//sound absorbing surface of area in m^2
a=0.2//average absorption coefficient in sabine

//CALCULTION
T=(0.167*V)/(a*S)//The reverberation time of the hall in sec

//OUTPUT
printf('The reverberation time of the hall is %3.2f sec',T)
