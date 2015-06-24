// Example 5.1, Page No-234
clear
clc

Vz1=5.5
Vz2=5.5
Aol=100000
Vd=0.7
Vo=Vz1+Vd  // Plus or minus
Vich=Vo/Aol
Vich=Vich*1000
printf('Delta Vi=%.3f mV', Vich)


