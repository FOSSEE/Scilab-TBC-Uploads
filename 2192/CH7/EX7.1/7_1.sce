clc,clear
printf('Example 7.1\n\n')

Z=0.0003295 //electrochemical equivalent of copper
I=1 //current strength
T=100*60 //time in seconds
W= Z*I*T //weight of nickel deposited
D=8.9 //density of nickel
V=W/D //volume of nickel deposited
A=2.25 //area of plate
t=V/A //thickness of deposit

printf('Thickness of copper deposited = %.4f cm',t)
