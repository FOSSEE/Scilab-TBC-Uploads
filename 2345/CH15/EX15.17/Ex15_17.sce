//Finding resistance
//Example 15.17(pg. 403)
clc
clear
Ra=1//resistance of A in ohm
lab=20//ratio of length of A to length of B
Aab=1/3//ratio of area of A to area of B
//resistivity is same for both wires
Rb=Ra*(Aab/lab)//resistance of wire B in ohm
//since Ra=rho*la/Aa and Rb=rho*lb/Ab so from ratio of both we get Rb
printf('Thus resistance of wire B is %2.4f omhs',Rb)
