//Calculate (a) the voltage gain Av and (b) the current gain Ai.
//Example 6.7 page no 178
clear
clc
hfe=90
Rl=800//Ω
Rc=800//Ω
Rb=831//kΩ
hie=200
hoe=100*10^-6
Av=-((hfe*Rl*Rc)/(hie*(Rc+Rl+hoe*Rl*Rc)))   //voltage gain Av
Ai=((Rb*hie)/(Rl*(Rb+hie)))*Av              //current gain Ai
printf("\n The value of Av=%0.3f " ,Av)
printf("\n The value of Ai=%0.3f " ,Ai)

