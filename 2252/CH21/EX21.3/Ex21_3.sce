
funcprot(0)
//calculating pitch factor
beta=0//full pitch coil
Kc=cos((beta/2)*%pi/180)
mprintf("Pitch factor, Kc=%d\n", Kc)
//calculating distribution factor
m=4//no. of slots per pole per phase
x=m*3//no. of slots per pole
alpha=180/x//phase displacement between adjacent slots in degrees
Kd=sin((m*alpha/2)*%pi/180)/(m*sin((alpha/2)*%pi/180))
mprintf("Distribution factor of stator winding=%f\n", Kd)
//calculating emf generated per phase
Kw=Kd*Kc
y=m*8//no. of slots per phase
n=y*10//no. of conductors per phase
Tph=160//no. of turns per phase
f=50//frequency
phi=.04//flux per pole
Eph=round(4.44*f*Kw*Tph*phi)
mprintf("Emf per phase at no load=%d V\n", Eph)
//calculating line emf
El=sqrt(3)*Eph
mprintf("Line emf=%d V", round(El))
//answer vary from the textbook due to round off error
