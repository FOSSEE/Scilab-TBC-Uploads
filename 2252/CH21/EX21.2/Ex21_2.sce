
funcprot(0)
m=2//no. of slots per pole per phase
x=m*3//no. of slots per pole
alpha=180/x//phase displacement between adjacent slots in degrees
Kd=sin((m*alpha/2)*%pi/180)/(m*sin((alpha/2)*%pi/180))//distribution factor
beta=180-150//in degrees
Kc=cos((beta/2)*%pi/180)//coil span factor
Kw=Kd*Kc//winding factor
P=10//no. of poles
n=m*P//no. of slots per phase
Zph=n*10//no. of conductors per phase
Tph=100//no. of turns per phase
N=600//speed of the alternator in rpm
f=P*N/120//frequency
phi=.05//useful flux per pole in Wb
Eph=4.44*Kw*f*phi*Tph
mprintf("Stator emf per phase at no load=%d V", round(Eph))
