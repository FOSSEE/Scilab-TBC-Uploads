clear
//
l=10
r=100
i=1
f=100
i1=0.5
c=1/(4*(3.14**2)*(r**2)*l)
v=i*r
z=v/i1
//z=100+jX
x=((200**2)-(100**2))**0.5
omega=641.1 //angular frequency in rad/sec
f0=omega/(2*3.14)
f1=f0-(r/(4*3.14*l))
f2=f0+(r/(4*3.14*l))
printf("\n f0= %0.1f  Hz",f0)
printf("\n f1= %0.1f  Hz",f1)
printf("\n f2= %0.1f  Hz",f2)
