
//

//

h=1.5
a1=10,a2=12,

c=100
ra1=1.150,ra2=2.050,ra3=2.950,

rb1=0.855,rb2=1.605,rb3=2.355,

rlp=450.5



v1=c*(ra3-ra1)*(sin(a1*(%pi/180)))

v2=c*(rb3-rb1)*(sin(a2*(%pi/180)))

h1=ra2*(cos(a1*(%pi/180)))
h2=rb2*(cos(a2*(%pi/180)))

printf("\n v1,v2= %0.3f %0.3f",v1,v2)
printf("\n h1,h2= %0.3f %0.3f",h1,h2)

rlai=rlp+h

rla=rlai-v1-h1
rlb=rlai-v2-h2

printf("\n RL of A= %0.3f ",rla)
printf("\n RL of B= %0.3f ",rlb)

d1=c*(ra3-ra1)*(cos(a1*(%pi/180)))-ra2*(sin(a1*(%pi/180)))
d2=c*(rb3-rb1)*(cos(a2*(%pi/180)))-rb2*(sin(a2*(%pi/180)))

dab=d1+d2
printf("\n distance between A an B is %0.3f ",dab)
gpa=d1/(rlp-rla)
gpb=d2/(rlp-rlb)

printf("\n gradient of PA is 1 in  %0.3f ",gpa)
printf("\n gradient of PB is 1 in  %0.3f ",gpb)
