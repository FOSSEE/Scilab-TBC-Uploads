clear
//
//given
//z1=15+j20
//z2=8-j10
I=20
z1=25 //in polar form at angle 53.13
z2=12.81 //at angle -51.34
//v=I1z1=I2z2
//I2=1.95I1
//from diagram I**2=(I1cosang1+I2cosang2)**2+(I2sinang2-I1sinang1)**2
//on substituting values in the above eqn and simplifying
I1=6.78
printf("\n I1=6.78A")
I2=13.22
//substitute this in I2=1.95I1
printf("\n I2=13.22A")
pow1=I1**2*15
pow2=I2**2*8
printf("\n power loss in z1= %0.1f  W",pow1)
printf("\n power loss in z2= %0.1f  W",pow2)
