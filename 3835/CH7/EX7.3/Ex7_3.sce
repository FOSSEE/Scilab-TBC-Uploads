clear
//
//given
n=500 //speed to rotation
p=12  //poles
//case a
f=n*p/120  //frequency
printf("\n frequency= %0.0f  Hz",f)
//case b
kp=1  //kp is the winding at full pitch
//kd is the distribution factor where kd=sin[mk/2]/msin(k/2) where k is a gama function
//m=108/12*3
m=3
//gama or k=180/slots per pole=9 k=20
//after substituting above values in kd we get kd=0.96
//z=108*12/3 = 432
ep=2.22*1*0.96*432*50*50*10**-3
printf("\n Phase emf= %0.3f  v",ep)
//case c
vl=3**0.5*ep
printf("\n The line voltage is= %0.3f  v",vl)
