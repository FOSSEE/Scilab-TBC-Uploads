
funcprot(0)
//calculating distribution factor of stator winding
m=9//no. of slots per pole per phase
x=m*3//no. of slots per pole
alpha=180/x
Kd=sin((m*alpha/2)*%pi/180)/(m*sin((alpha/2)*%pi/180))
mprintf("Distribution factor of stator winding, Kd=%f\n",Kd)
//calculating pitch factor of stator winding
beta=2*20/3
Kc=cos((beta/2)*%pi/180)
mprintf("Pitch factor=%f\n", Kc)
//calculating useful flux per pole
Zph=9*2*4//no. of conductors per phase
Tph=36//turns per phase of stator winding
P=2//no. of poles
N=3000//speed in rpm
f=P*N/120
V=3.3D+3//line voltage
Eph=V/sqrt(3)
phi=Eph/(4.44*f*Kd*Kc*Tph)
mprintf("Useful flux per pole=%f Wb", phi)
