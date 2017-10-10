// calculate axial velocity ,flow rate ,exit blade angle,eulers power
// ex 7.2 pgno. 170
clc
D1=2 // m
Dh=0.8 // m
N=250 //rpm
alpha1 =42 // degree
beta1=148// degree
D=(D1+Dh)/2 // diameter
g=9.8 
mprintf('\n D= %f m',D)
u=(%pi*D*N)/60 // peripherical velocity of blade
mprintf('\n u =%f m/s',u)
a=(180-148) //area
disp(a)
d=a*18.3 // diameter
disp(tan(d))

vlw=(tand(42)+tand(32))  
disp(vlw)
Vlw=tand(d)/vlw
disp(Vlw)
vlw=7.5 
vf=vlw*tand(alpha1) // inlet trangle of velocities
mprintf('\n Vf = %f m/s',vf)
Q=(%pi/4)*((D1^2-Dh^2)*vf) // flow rate
mprintf('\n Q = %f m3/s',Q)
E=(u*vlw)/g // euler's head
mprintf('\n Euler s Head E =%f m',E)
Ep=(9800*Q*E)/1000 // eulers power
mprintf('\n Eulers power = %e W',Ep)
b2=vf/u 
mprintf('\n b2 = %f Degree',atand(b2))
