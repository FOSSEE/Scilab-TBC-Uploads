clear
//

//variable declaration

P=(40000)               //Load,N
E=(200000)              //Modulus of elasticity for steel,N/mm^2
L=500              //length of circular rod,mm
d=(16)               //diameter of rod,mm

A=(%pi*((d**2)))/4   //sectional area** mm^2
p=P/A                 //stress, N/mm^2
e=p/E                 //strain
delta=(P*L)/(A*E)     //Elongation,mm

printf("\n sectional area= %0.2f  mm^2",A)
printf("\n stress= %0.2f  N/mm^2",p)
printf("\n strain= %0.10f ",e)
printf("\n Elongation= %0.3f  mm",delta)
