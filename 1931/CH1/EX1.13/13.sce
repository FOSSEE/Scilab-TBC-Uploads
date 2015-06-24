clc
clear
//INPUT DATA
V=12500//volume of hall in m^3
T1=1.5//The reverberation time of the hall in sec
a2S2=200//The number of cushioned chairs are additionally placed in the hall in sabine-m^2

//CALCULATION
Ta1S1=(0.167*V)/T1//The reverberation time before placed cushioned chairs in sabine -m^2
T2=(0.167*V)/(Ta1S1+a2S2)//The new reverberation time after placing the cushioned chairs in sec

//OUTPUT
printf('The new reverberation time after placing the cushioned chairs is %3.4f sec',T2)

