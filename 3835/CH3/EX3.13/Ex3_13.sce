clear
//
//given
A=10**-1  //area
flux=0.1 //Wb
//case a
B=flux/A  //flux density Wb/m**2
u1=4*3.14*10**-7  
F=(B*B*A)/(2*u1) //force in N
printf("\n force= %0.5f  N",F)
//case b
l=10**-2  //length of the air gap
w=(B*B*A*l*2)/(2*u1)   //energy stored in two airgaps, 2=air gaps
printf("\n W= %0.5f  J",w)
