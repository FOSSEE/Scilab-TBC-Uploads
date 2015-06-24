clc,clear
printf('Example 4.2\n\n')

Slots=120
Pole=8
Phase=3 //number of phases
n=Slots/Pole         //Slots per Pole
m=Slots/Pole/Phase   //Slots per Pole per Phase
beeta=180/n           //Slot angle in degree
K_d=sind(m*beeta/2) /(m*sind(beeta/2)) //Distribution Factor
printf('Distribution Factor:\nK_d=%.3f',K_d)
