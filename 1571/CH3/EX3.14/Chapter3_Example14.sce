clc
clear

//INPUT DATA 
cp=1.25;//specific heat of helium inkj/kg-K
v=1000;//volume of the gas in ml
w=0.1785;//mass of the gas at N.T.P in gm
p=76*13.6*981;//pressure of the gas at N.T.P in dynes
T=273;//temperature at N.T.P in K

//CALCULATIONS
V=1000/w;//volume occupied by the 1gm of helium gas in cc
cv=cp/1.66;//specific heat at constant volume it is monatomuc gas kj/kg-K
r=p*V/T;//gas constant in cm^3.atm./K.mol
J=r/(cp-cv);//mechanical equivalent of heat in erg/cal

//OUTPUT
mprintf('the mechanical equivalent of heat is %3.2f ergs/calories',J)
