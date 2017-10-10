clear all
clc
close

mi=133*1.67*1e-27;//Mass of cesium in kg
qi=1.6*1e-19;//Charge in C
Va=3500;//Accelerating voltage in V
I=0.2;//Ion current in A

//Calculation of velocity of ejected ions in km/s
vi=sqrt(2*qi*Va/mi);
printf('Velocity of ejected ions is %f m/s',vi)

//Calculation of propulsion force in mN
F=vi*mi*I/qi
printf('propulsion force is %f N',F)
