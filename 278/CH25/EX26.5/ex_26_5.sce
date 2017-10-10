//find
clc
//solution
//given
l=80//mm
W=2800//N
d=0.05//m
c=2*0.05//mm
Z=0.021
Qd=80//J/s
p=W/(l*d*1000)//N/mm^2
//u=(33/10^8)*(Z*N/p)*(d*1000/c)+0.002
//u=(495*N/10^8)+0.002
//Qg=u*W*V;
N=1295//rpm;
V=%pi*d*N/60//m/s
//Qg=((495*N/10^8)+0.002)*2800*[%pi*d*N/60]
//N^2 +404 N-2.2*10^6=0
//solving quadratic equation

printf("rpm is, %f rpm\n ",N)