//example-11.1
//page no- 343
//given
//applied stress
sigmax=3.5  //MPa
//aluminium crystal slips from (111) plane in the direction [110] when the stess is applied to (1-11)
//so
h1=1
k1=1
l1=1
h2=1
k2=-1
l2=1
//magnitude of plane (111)
M1=sqrt(h1^2+k1^2+l1^2)
//magnitude of (1-11)
M2=sqrt(h2^2+k2^2+l2^2)
//direction [110]
h3=1
k3=1
l3=0
//magnitude of direction[110]
M3=sqrt(h3^2+k3^2+l3^2)
//the angle between the planes (111) and (1-11) is 
cosphie=[{h1*h2+k1*k2+l1*l2}/(M1*M2)]
sinphie=sqrt(1-(cosphie)^2)
//similarly angle between the plane (111) and the direction [110] is given by
costheta=[(h1*h3+k1*k3+l1*l3)/(M1*M3)]  
//critical resolved shear stress
taucr=sigmax*2*sinphie*cosphie*costheta/2  //MPa
printf ("the critical resolved shear stress is %f MPa",taucr)
