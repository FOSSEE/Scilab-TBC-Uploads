clc
//initialisation of variables
h=0.72//percent
t=80//F
p=14.9//psia
w=0.622//ft
q=0.5069//ft
//CALCULATIONS
Pact=h*q//Psia
S=w*(Pact/(p-Pact))//lb vapor per lb dry air
//RESULTS
printf('The specific humidity and also its dew point temperature=% f lb vapor per lb dry air',S)
