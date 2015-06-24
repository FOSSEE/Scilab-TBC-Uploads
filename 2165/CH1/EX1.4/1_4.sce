clc
//initialisation of variables
Cp=0.24//lb/in^2
Cv=0.18//ft^3
p1=5//lb/in^2
T1=20//Degree C
T2=150//Degree C
//CALCULATIONS
W=p1*Cp*(T2-T1)//C.H.U
H=p1*Cv*(T2-T1)//C.H.U
Gamma=Cp/Cv//lb/in^2
//RESULTS
printf('the constant pressure=% f C.H.U',W)
printf('the constant volume the value of gas=% f lb/in^2',Gamma)
