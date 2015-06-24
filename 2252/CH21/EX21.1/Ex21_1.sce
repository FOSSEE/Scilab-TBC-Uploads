
//calculating speed
f=50//frequency
P=20//no. of poles
N=120*f/P
mprintf("Speed at which alternator must be run=%d rpm\n", N)
//calculating the generated emf per phase
x=180//total no. of slots
y=x/P//slots per pole
m=y/3//slots per pole per phase
alpha=180/9//phase displacement between adjacent slots
Kd=sin((m*alpha/2)*%pi/180)/(m*sin((alpha/2)*%pi/180))//distribution factor
Kc=1//coil span factor
Kw=Kd*Kc//winding factor
Z=180*8//total no. of conductors
a=Z/3//conductors per phase
T=a/2//turns per phase
phi=25D-3//flux per pole
Eph=round(4.44*Kw*f*phi*T)
mprintf("Generated emf per phase=%d V\n", Eph)
//calculating line emf
El=sqrt(3)*round(Eph)
mprintf("Line emf=%d V", round(El))
//answer vary from the textbook due to round off error
