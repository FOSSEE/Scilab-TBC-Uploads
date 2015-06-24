
//under block rotor condition
Vb=82.5
Ib=9.3
Zb=Vb/Ib
P=500//power consumed
Rb=P/Ib^2
Xb=sqrt(Zb^2-Rb^2)
R1=2.5//main resistance winding
R2_dash=Rb-R1//rotor resistance referred to stator
X1=Xb/2
X2_dash=X1//rotor reactance referred to stator
//under no load
I0=6.4
V0=230
Z0=V0/I0
P0=220//power consumed
R0=P0/I0^2
X0=sqrt(Z0^2-R0^2)
Xm=2*X0-3/2*Xb
mprintf("Equivalent circuit parameters of the motor are:\nR1=%f ohm,\nX1=%f ohm,\nXm=%f ohm,\nR2_dash=%f ohm,\nX2_dash=%f ohm\n", R1,X1,Xm,R2_dash,X2_dash)
