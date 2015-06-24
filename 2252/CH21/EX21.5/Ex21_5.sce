
funcprot(0)
m=5//no. of slots per pole per phase
x=m*3//no. of slots per pole
alpha=180/x//in degrees
Kd=sin((m*alpha/2)*%pi/180)/(m*sin((alpha/2)*%pi/180))//distribution factor
beta=3*12//in degrees
Kc=cos((beta/2)*%pi/180)//pitch factor of stator winding
Tph=5*2*4/2//no. of turns per phase
V=6D+3//line voltage
Eph=V/sqrt(3)
phi=.857//flux in Wb
f=round(Eph/(4.44*Kd*Kc*Tph*phi))
P=4//no. of poles
N=120*f/P
mprintf("Speed of rotation of alternator, N=%d rpm", round(N))
//answer vary from the textbook due to round off error
