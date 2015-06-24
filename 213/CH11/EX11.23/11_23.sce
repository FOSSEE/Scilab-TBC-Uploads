//To find pitch and length of chain
clc
//Given:
N1=240, N2=120 //rpm
T1=20
d2=600/1000, r2=d2/2, x=800/1000 //m
//SOlution:
//Calculating the number of teeth on the drive sprocket
T2=T1*(N1/N2)
//Calculating the pitch of the chain
p=r2*2*sind(180/T2)*1000 //mm
//Length of the chain:
m=x*1000/p
//Calculating the multiplying factor
K=(T1+T2)/2+2*m+(1/sind(180/T1)-1/sind(180/T2))^2/(4*m)
//Calculating the length of the chain
L=p*K/1000 //m
//Results:
printf("\n\n Number of teeth on the driven sprocket, T2 = %d.\n\n",T2)
printf(" Pitch of the chain, p = %.1f mm.\n\n",p)
printf(" Length of the chain, L = %.4f m.\n\n",L)