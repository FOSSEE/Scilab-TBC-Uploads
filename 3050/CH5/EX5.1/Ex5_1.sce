//calculating VI
//Example 5.1
clc
clear
L=674//viscosity of low viscosity index oil
H=314//viscosity of high viscosity index oil
U=464//viscosity of test oil in S
VI=(L-U)*100/(L-H)//viscosity index
printf('Thus VI of the oil sample under test =%2.2f',VI)
