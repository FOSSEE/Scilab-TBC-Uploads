clc
clear
//Input data
v=1500//Volume of hall in m^3
A1=100//Absorption of the sound by the hall in m^2 O.W.U or sabines
A2=100//Absorption of the sound by the audience in m^2 O.W.U or sabines

//Calculations
A=A1+A2//Total absorption of sound in sabines
t1=(0.16*v)/A1//Reverberation time of the hall when the room is empty in s
t2=(0.16*v)/A//Reverberation time of the hall when the room is filled with audience in s
t=t1-t2//Change in reverberation time in s

//Output
printf('When the hall is filled with audience, the reverberation time is reduced to %3.1f s',t)
