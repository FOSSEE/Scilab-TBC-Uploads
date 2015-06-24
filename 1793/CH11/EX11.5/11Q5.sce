clc
Gs=18
Gw=9.81
H=10
eo=1.1
To=5*(Gs-Gw)
T1=48
T=To+T1
e1=1.045 // void ratio corresponding to T 
e=eo-e1
Sc=H*e/(1+eo)
printf('The settlement in the field Sc = %f m',Sc)
