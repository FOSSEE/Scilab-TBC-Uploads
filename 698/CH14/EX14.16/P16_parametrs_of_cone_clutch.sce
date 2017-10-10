clc
//Example 14.16
//Parameterts of cone clutch
//------------------------------------------------------------------------------

//Torque
T=200//Nm
//Speed
N=1250//rev/min
//Large diameter
Do=0.35//m
Ro=Do/2
//Face width
b=0.065//m
//coefficient of friction
f=0.2
//cone pitch angle
alpha=6.25//degrees
//converting alpha in degrees to radians
alpha=(alpha*%pi)/180

//------------------------------------------------------------------------------

//mean radius
Rm=Ro-((1/2)*b*sin (alpha))
Rm=floor(Rm*(10^3))
Rm=Rm*(10^-3)
//Rm=(Ro+Ri)/2
//smaller radius
Ri=(2*Rm)-Ro
Ri=floor(Ri*(10^3))
Ri=Ri*(10^-3)

//T=(F*f*Rm)/(sin alpha)
//Axial force F required to transmit the torque
F=(T*sin (alpha))/(f*Rm)

//Axial force required to engage the clutch when clutch is not rotating
//Fe=Fn((sin alpha)+(f*cos alpha))
Fe=(T/(f*Rm))*((sin (alpha))+(f*cos (alpha)))

//average normal pressure when maximum torque is being transmitted
p=F/(%pi*((Ro^2)-(Ri^2)))

//maximum normal pressure assuming uniform wear
Pmax=F/(2*%pi*(Ro-Ri)*Ri)

//------------------------------------------------------------------------------
//Printing result file to .txt
res16=mopen(TMPDIR+"16_parametrs_of_cone_clutch.txt",'wt')
mfprintf(res16,"(a)Axial force F required to transmit the torque is %0.1f N\n",F)
mfprintf(res16,"(b)Axial force required to engage the clutch, enagagement taking place when clutch is not rotating, is %0.1f N\n",Fe)
mfprintf(res16,"(c)Average normal pressure when maximum torque is being transmitted is %0.1f kN/m^2\n",p*(10^-3))
mfprintf(res16,"(d)Maximum normal pressure assuming uniform wear is %0.1f kN/m^2\n",Pmax*(10^-3))
mclose(res16)
editor(TMPDIR+"16_parametrs_of_cone_clutch.txt")
//------------------------------------------------------------------------------
//---------------------------------End of program-------------------------------