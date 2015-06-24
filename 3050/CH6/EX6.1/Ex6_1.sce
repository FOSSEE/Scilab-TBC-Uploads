//calculating emf
//Example 6.1
clc
clear
Es=1.5273//emf of known cell in V
Ns=90//null point of known cell in cm
Nu=60//null point of unknown cell in cm
Eu=Nu*Es/Ns//Emf of cell
printf('Thus the emf of cell = %2.4f V',Eu)
