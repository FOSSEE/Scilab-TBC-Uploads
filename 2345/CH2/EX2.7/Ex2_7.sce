//Finding resistance
//Example 2.7(pg. 24)
clc
clear
l=1000// length in meters
d=0.09/100// diameter in meters
p=1.724*(10^-8)// specific resistance in ohm meter
a=%pi*(d^2)/4// area in meter square
R=p*l/a//resistance in ohms
printf('The value of Resistance is %3.2f ohms',R)
