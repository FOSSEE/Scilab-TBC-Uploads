clear
clc

dia=2.5e-2
d=3

r=dia/2
r1=.7788*r

c=exp(%i *2*%pi/3)
b=exp(%i *-2*%pi/3)
k=2

Dab=d
Dac=2*d
Dbc=d
Dca=2*d

La=round(k*(log(1/r1) + log(1/Dab)*b + log(1/Dac)*c)*1e3)/1e4
Lb=round(k*(log(1/Dab) + log(1/r1)*b + log(1/Dbc)*c)/b*1e3)/(1e4)
Lc=round(k*(log(1/Dac) + log(1/Dbc)*b + log(1/r1)*c)/c*1e3)/(1e4)

disp(La, "La= (mH/km)")
disp(Lb, "Lb= (mH/km)")
disp(Lc, "Lc= (mH/km)")
