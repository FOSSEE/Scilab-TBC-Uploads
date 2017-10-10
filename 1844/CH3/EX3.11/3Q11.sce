clc
A=.08 // area in sq cm
n=3
P=100 // in N
V=A*100 // in cu cm
L=10 //in m
p=0.078 //Weigt=ht of 1 cu cm steel in N
Wpm=V*p
TW=V*p*L
Cs= n*L*(TW)^2/(24*P^2)
printf('Correction of sag = %f m',Cs)
