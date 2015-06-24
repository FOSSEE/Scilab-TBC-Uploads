clc
clear
//INPUT DATA
V=1500//volume of room in m^3
a1=0.03//average sound coefficient for wall in sabine
a2=0.06//average sound coefficient for the ceiling in sabine
a3=0.8//average sound coefficient for the floor in sabine
S1=260//The wall area of the room in m^2
S2=140//The floor area of the room in m^2
S3=140//The ceiling area of the room in m^2

//CALCULATION
a=((a1*S1)+(a2*S2)+(a3*S3))/(S1+S2+S3)//The average absorbtion coefficient in O.W.U
TS=S1+S2+S3//total area of the room in m^2
x=(a*TS)//Total sound absorbtion of the room in O.W.U-m^2
T=((0.167*V)/x)//The reverberation time in sec

//OUTPUT
printf('The average absorbtion coefficient is %3.4f O.W.U \n The reverberation time is %3.4f sec',a,T)
