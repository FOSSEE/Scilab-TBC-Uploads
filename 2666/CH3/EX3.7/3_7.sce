clc
//initialisation of variables
t=180//F
v=20//cu ft
p1=30//psia
p2=180//psia
t1=180//F
h=144//ft
t2=778//F
//CALCULATIONS
Q=((-h*p1*v)/t2)*1*log(p2/p1)//Btu removed
//RESULTS
printf('the heat must be removed air=% f Btu removed',Q)
