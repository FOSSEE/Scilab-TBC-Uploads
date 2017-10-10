//determine dia of the shaft
clc
//solution
//given
P=20000//W
N=200//rpm
W=900//N
L=2500//mm
t=42//N/mm^2
fb=56//N/mm^2
T=P*60000/(2*%pi*200)//N-mm
M=W*L/4//N-mm//max monet
Te=sqrt(T^2 + M^2)//N-mm
//Te=(%pi/16)*t*d^3
d1=(Te/8.25)^(1/3)//mm
printf("the dia of shaft is,%f mm",d1)
Me=0.5*[M + sqrt(M^2 + T^2)]//N-mm
//Me=(%pi/32)*fb*d2^3
d2=(Me/5.5)^(1/3)//mm
printf("the dia oif shaft is,%f mm\n",d2)
printf("taking large value i.e d=d1=55 mm in consideration\n")
//dia by applying gradually applied load
//using table 14.2
Km=1.5
Kl=1
Te1=sqrt((Km*M)^2 + (Kl*T)^2)//N-mm
//Te=(%pi/16)*t*d^3
d1=(Te1/8.25)^(1/3)//mm
printf("the dia of shaft is,%f mm",d1)
Me1=0.5*[M*Km + sqrt((Km*M)^2 + (Kl*T)^2)]//N-mm
//Me1=(%pi/32)*fb*d2^3
d2=(Me1/5.5)^(1/3)//mm
printf("the dia oif shaft is,%f mm\n",d2)
printf("taking large value i.e d=d1=60 mm in consideration\n")