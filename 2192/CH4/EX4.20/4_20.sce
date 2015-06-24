clc,clear
printf('Example 4.20\n\n')

V=10 //secondary voltage
P=400*10^3 //power drawn in watts
phi=acos(0.6) //power factor angle
I= P/(V*cos(phi)) //secondary current
Z=V/I //impedance of secondary circuit 
R=Z*cos(phi) //resistance of secondary circuit when hearth is full
X=Z*sin(phi) //reactance of secondary circuit

//x is ratio of height of charge to full hearth
//Heat produced will be maximum when resistance of secondary circuit equals reactance ; i.e. when R/x= X

x=R/X
printf('Height of charge should be %.2f times height of hearth to obtain maximum heat',x)
