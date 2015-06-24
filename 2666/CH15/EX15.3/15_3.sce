clc
//initialisation of variables
t=90//F
t1=74//F
h=101//per pound of dry air
p=47.4//percent
p1=0.333//psia
p2=14.17//cu ft per pound dry air
d=7000//ft
//CALCULATIONS
V=h/d//lb per lb of dry air
H=V/p2//lb per cu ft
//RESULTS
printf('The absolute humidity equals=% f lb per cu ft',H)
