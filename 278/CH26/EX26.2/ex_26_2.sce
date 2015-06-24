//find
clc
//solution
//given
W=150000//N
d=0.3//m
N=1800//rpm
p=1.6//N/mm^2
Z=0.02//kg/m/s
c=0.25//mm
//let l be the length of bearing in mm
//A=l*d=300*l//mm^2
//pb=W/A
l=W/(300*p)//mm
printf("length of bearing is,%f mm\n",l)
u=(33/10^8)*(Z*N/p)*(d*1000/c)+0.002
printf("coeeficient of friction is,%f \n",u)
V=%pi*d*N/60//m/s
Qg=u*W*V
printf("heat gen is,%f W\n",Qg)