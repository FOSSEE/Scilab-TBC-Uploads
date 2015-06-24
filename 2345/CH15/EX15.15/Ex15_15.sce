//Finding resistance
//Example 15.15(pg. 401)
clc
clear
lab=10//la=10*lb ratio of length of A to length of B.
Aab=1/2//Aa=1/2*Ab ratio of area of A to area of B
RHOab=1/2//RHOa=2*RHOb ratio of resistivity of A to resistivity of B
Ra=2//resistance of A in ohm
Rb=(Ra*Aab)/(lab*RHOab)//resistance of B in ohm
//Since Ra=RHOa*la/Aa and Rb=RHOb*lb/Ab so from ratio of two we get Rb
printf('Thus resistance of resistor B is %2.2f ohm',Rb)
