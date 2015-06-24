clc
//Chapter8
//Example8.24, page no 354
//Given
f=20e6//tuned freq
ZR=100//Equivalent aerial Resistance
Zin=500//input impedance
c=3e8
lambda=c/f
l=lambda/4//lambda/4 Transformer

Zo=sqrt(Zin*ZR)//Characteristic impedance
mprintf('the Length of the transformer(stub) is %f metres\n The characteristic impedance of this transformer is %d ohms',l,round(Zo))
