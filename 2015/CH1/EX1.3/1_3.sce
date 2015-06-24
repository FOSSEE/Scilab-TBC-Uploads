clc
//initailisation variables
d=20 //cm
l=25 //cm
cv=1400 //cc
g=1.4
//CALCULATIONS
sv=(22/7*d^2*l)/4
tv=sv+cv
r=tv/cv
e=1-1/(r)^(g-1)
printf('otto efficiency is %2f',e)
