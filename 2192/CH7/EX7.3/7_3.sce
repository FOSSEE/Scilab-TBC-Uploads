clc,clear
printf('Example 7.3\n\n')

W=5 //weight of copper to be deposited
Z=0.3294*10^-3 //ECE of copper
Q=W/Z //quantity of electricity required
T=1*60*60 //time of deposit
I=Q/T //steady current required

printf('Required steady current = %.3f A',I)
