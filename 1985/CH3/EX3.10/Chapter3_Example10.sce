clc
clear
//Input data
E=2*10^6*1.6*10^-19//Energy of the electron in J
c=3*10^8//Velocity of light in m/s
mo=9.1*10^-31//Mass of the electron in kg

//Calculations
m=(E/c^2)+mo//Mass in kg. In textbook, the answer is wrong. The correct answer is 44.65*10^-31 kg
v=(c*sqrt(1-(mo/m)^2))/10^8//Velocity of the particle in m/s

//Output
printf('Velocity of the particle is %3.3f*10^8 m/s',v)

