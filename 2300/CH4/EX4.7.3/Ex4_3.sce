
//scilab 5.4.1
//windows 7 operating system
//chapter 4:Metal-Semiconductor Contacts
clc
clear
//given
e=1.6*10^-19//e=charge of an electron in C
Fa=7*10^6//Fa=reverse bias field in V/m
Es=13.1*8.854*10^-12//(Es/Eo)=13.1;Eo=8.854*10^-12
dQ=((e*Fa)/(4*%pi*Es))^(1/2)//dQ=barrier lowering in V 
disp("V",dQ,"dQ=")
Xm=(dQ)/(2*Fa)//Xm=position of the maximum barrier height
disp("m",Xm,"Xm=")
