
clc
//initialisation of variables
kl=0.2
kd=0.05
A=4//ft^2
g=32.2//ft/sec^2
wa=0.081//lb
ww=62.4//lb
v=20//ft/sec
//CALCULATIONS
La=kl*A*wa*v*v/g
Da=kd*A*wa*v*v/g
Lw=kl*A*ww*v*v/g
Dw=kd*A*ww*v*v/g
//RESULTS
printf ('\n force on the plate for fluid air= %.3f lb',La)
printf ('\n resistance of the plate for fluid air= %.3f lb',Da)
printf ('\n force on the plate for fluid water= %.f lb',Lw)
printf ('\n resistance of the plate for fluid air= %.f lb',Dw)
