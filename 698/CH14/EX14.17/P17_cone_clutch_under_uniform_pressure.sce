clc
//Exercise 14.17
//same clutch as previous problem, assuming uniform pressure theory

//------------------------------------------------------------------------------
//Given Data:
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

//Axial force reqiured to transmit the torque
//t=F*f*((Ro^3-Ri^3)/(3*Rm*b*(sin (alpha))^2))
F=T/(f*((Ro^3-Ri^3)/(3*Rm*b*(sin (alpha))^2)))

//Axial force required to engage the clutch when clutch is not rotating
//Fe=Fn((sin alpha)+(f*cos alpha))
Fn=F/sin(alpha)
Fe=Fn*((sin (alpha))+(f*cos (alpha)))

//average normal pressure when maximum torque is being transmitted
//Fn=p*2*%pi*Rm*b
p=Fn/(2*%pi*Rm*b)

//------------------------------------------------------------------------------
//Printing file to .txt
res17=mopen(TMPDIR+'17_cone_clutch_under_uniform_pressure.txt','wt')
mfprintf(res17,"(a)Axial force F required to transmit the torque is %0.2f N\n",F)
mfprintf(res17,"(b)Axial force required to engage the clutch, enagagement taking place when clutch is not rotating, is %0.2f N\n",Fe)
mfprintf(res17,"(c)Average normal pressure when maximum torque is being transmitted is %0.2f kN/m^2\n",p*(10^-3))
mclose(res17)
editor(TMPDIR+'17_cone_clutch_under_uniform_pressure.txt')

//------------------------------------------------------------------------------
//------------------------------End of program----------------------------------