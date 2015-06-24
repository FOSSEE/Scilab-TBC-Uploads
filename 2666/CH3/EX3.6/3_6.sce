clc
//initialisation of variables
p1=80//psia
p2=120//psia
t1=80//F
v=20//cu ft
h=144//ft
w=53.35//ft
t2=540//F
p=0.1715//ft
//CALCULATIONS
W=(h*t1*v)/(w*t2)//lb
T=(t2*p2)/t1//R
Q=W*p*(T-t2)//Btu
//RESULTS
printf('The heat added=% f Btu',Q)
