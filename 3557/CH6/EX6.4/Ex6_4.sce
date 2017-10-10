//Example 6.4//

rO=0.132;//nm //Ionic radius of Oxygen (From appendix 2)
p=2*rO
mprintf("p = %f nm",p)
a=7.0*10^9;//Pa //The theoretical strength of the defect free glass
p1=0.264*10^-9//m  
c=1*10^-6;//m //crack length
s=(1/2)*a*(p1/c)^(1/2)
mprintf("\ns = %e Mpa  = 57MPa (As M =10^6)",s)

