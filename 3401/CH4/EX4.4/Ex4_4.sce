clc

T=300 //K
mn=1.08 //m0
mp=0.56 //m0
k=8.617*10^-5 //eV/K

//Efi-Emidgap=(3/4)k*T*log(mp/mn)
//a=Efi-Emidgap

a=(0.75)*k*T*log(mp/mn)
printf('Efi-Emidgap=%f eV',a)     //textbook ans is wrong
