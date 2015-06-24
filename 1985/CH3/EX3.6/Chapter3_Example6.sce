
clc
clear

//INPUT
t=2*10^-6;//The life time of micro mesons in s
v=2.994*10^8;//Speed of micro mesons in m s^-1
c=3*10^8;//Speed of light in m s^-1

//CALCULATIONS
T=(t/sqrt(1-(v^2/c^2)))/10^-5//Life time of micro mesons in s
D=v*T*10^-5//Distance travelled by micro mesons in one life time in m
d=v*t//Distance travelled by the micro mesons if there is no relativistic effect in m

//OUTPUT
mprintf('The mean life time of micro mesons  is %f*10^-5 s \n',T)
mprintf('The distance traveled by micro mesons is %3.1f m \n',D)
mprintf('The distance traveled if there is no relativistic effect is %3.1f m \n',d)
