
clc
clear

//INPUT
T=2;//Time on earth in years
t=1;//Time on satilite in years
c=3*10^8;//Speed of light in  m/s

//CALCULATIONS
v=c*sqrt(1-(t^2/T^2))/10^8//Velocity in m/s

//OUTPUT
mprintf('The speed of the rocket is %5.3f*10^8 m/s',v )
