clear
//
Wl=750.0  //weight of lower block
Wu=500.0  //weight of upper block
o1=60.0*3.14/180.0   //angle of inclined plane
o2=30.0 *3.14/180.0 // anlge at which pull is applied
u=0.2     //coefficient of friction
//for 750 N block
//Σ Forces normal to the plane = 0 
N1=Wl*cos(o1)
F1=u*N1
//Σ Forces parallel to the plane = 0
T=F1+Wl*sin(o1)
//Σ Forces horizontal to the plane = 0
P=(T+u*Wu)/(cos(o2)+u*sin(o2))
printf("\n %0.3f N",P)
