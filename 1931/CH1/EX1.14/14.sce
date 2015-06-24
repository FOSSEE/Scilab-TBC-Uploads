clc
clear
//INPUT DATA
V=475//volume of hall in m^3
a1=0.025//absorbtion coefficient for wall in O.W.U
a2=0.02//absorbtion coefficient for the ceiling in O.W.U
a3=0.55//absorbtion coefficient for the floor in O.W.U
S1=200//The wall area of the room in m^2
S2=100//The floor area of the room in m^2
S3=100//The ceiling area of the room in m^2

//CALCULATION
TaS=((a1*S1)+(a2*S2)+(a3*S3))//The average absorbtion coefficient in O.W.U-m^2
T=((0.167*V)/TaS)//The reverberation time in sec

//OUTPUT
printf('The reverberation time for the hall is %3.4f sec',T)
