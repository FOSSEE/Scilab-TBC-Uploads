//Finding resistance
//Example 2.19(pg. 33)
clc
clear
R1=18.6//resistacne in ohms
Kl=5//since l2=5*l1
Ka=3// since a2=3*a1
R2=R1*Kl/Ka
// resistivity is same because wires are of same material
printf('Thus the resistance of another conductor is %3.1f ohms',R2)
