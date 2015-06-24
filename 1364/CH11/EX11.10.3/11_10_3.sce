clc
//initialisation of variables
L= 1730 //ft
l= 104 //ft
hl= 234 //ft
u= 2.3 //ft/sec
g= 32.2 //ft/sec^2
//CALCULATIONS
H2= L-l
R= u^2/(2*g)
H1= H2+R+hl
P= H2*100/H1
//RESULTS
printf (' efficiency of tramsmission = %.1f per cent',P)
