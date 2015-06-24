
clc
//initialisation of variables
P0=100 //lbf/in^2
T0=660 //R
Mx=1.5//lbf/in^2
P0x=0.272//lbf/in^2
T0x=0.690 //R
Ax=1.176 //lbm
Px=P0x*P0//lbf/in^2
Tx=T0x*T0//R
Mx=0.701//lbf/in^2
Px1=2.458 //lbf/in^2
Tx1=1.320 //R
P0x1=0.9298 //lbf/in^2
Ax=1.094 //lbf/in^2
P0y=0.721 //lbf/in^2
T0y=0.911 //R
A=2.0 //lbf/in^2
Me=0.343 //lbf/in^2
P0e=0.922 //lbf/in^2
T0e=0.977 //R
//CALCULATIONS
Py=Px1*Px //lbf/in^2
Ty=Tx1*Tx //R
P0y=P0x1*P0//lbf/in^2
PE=P0e*P0y //lbf/in^2
TE=T0e*T0//R
//RESULTS
printf('the exit plane pressure and temperature and mach number=% f R',TE)
