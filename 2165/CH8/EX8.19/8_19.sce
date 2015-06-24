clc
//initialisation of variables
cv=0.1714//C.H.U
R=100.3//ft.lb
T=500//degree c
J=1400//in
Lam=R/J//C.H.U percent C
//CALCULATIONS
Cp=Lam+cv//C.H.U percent C
//RESULTS
printf('The specific heat at constant volume of a gaseous mixture is=% f C.H.U percent C',Cp)
