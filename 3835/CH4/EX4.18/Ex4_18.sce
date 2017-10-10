clear
//
c=50*10**-6
i=2.355
//case a
vl=120
vr=70
vac=150
//the phasor sum of vr and vl is OCthe applied voltage v is the phasor sum of vc and OC and is represented by OV
//the theta be the impedance angle of RL combination
//from right angled triangle OCD,theta can be determined as follows:
//(vr+vl*costheta)**2+(vl*costheta)**2=vac**2
//substitute the values then value of costheta can be found
zl=vl/i //impedance of the coil
p=0.981 //value of sin(79)
xl=zl*p
q=0.19 //value of cos(79)
r=zl*q
dc=i*xl
bd=i*r
//from right angled triangle ODB in fig.
v=98.3
xc=vac/i
printf("\n capacitive reactance= %0.1f  ohm",xc)
f=1/(xc*2*3.14*c)
printf("\n f= %0.1f  cycles/sec",f)
ploss=i**2*r
printf("\n power loss in iron cored choke is= %0.1f  w",ploss)
