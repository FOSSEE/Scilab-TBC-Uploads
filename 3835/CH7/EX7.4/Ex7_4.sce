clear
//
//given
f=50 //frequency
p=10 //number of poles
//case a
n=120*f/p
printf("\n n= %0.0f  rpm",n)
//case b
//the pitch factor kp=0.966
//m=2 and gama=180/slots per pole and it is obtained as 30
//kd=sin[(mgama)/2]/msin(gama/2)=0.966
z=6*2*10
ep=z*2.22*0.966*0.966*50*0.15
printf("\n phase emf= %0.5f  v",ep)
//case c
el=3**0.5*ep
printf("\n the line voltage= %0.3f  v",el)
