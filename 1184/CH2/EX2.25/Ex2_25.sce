//Example 2-25, page no - 61

clear
clc

fnotch = 120
R = 220*10^3

C = 1/(6.28*R*fnotch)

printf('The value of capacitance required is %.3f microfarad',2*C*10^6)
