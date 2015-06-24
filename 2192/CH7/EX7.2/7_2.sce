clc,clear
printf('Example 7.2\n\n')

I=10 //strength of current
T=20*60 //time of flow of current in seconds
W=13.42 //weight of silver deposited in grams
Z= W/(I*T) //Electrochemical equivalent of silver

printf('Electrochemical equivalent of silver = %.6f g/coulomb',Z)
