clc
//initialization of variables
clear
T=30 //degree celcius
alpha=0.0000117 // per degree celcius
//AB
L=6 //m
dl=T*alpha*L
df=0.375 //kg
tot=dl*df
//BC
dl=T*alpha*L
df=0.375 //kg
tot=tot+dl*df
//CD
dl=T*alpha*L
df=0.75 //kg
tot=tot+dl*df
tot=tot*100*2
// results
printf('The deflection is %.4f cm',tot)
