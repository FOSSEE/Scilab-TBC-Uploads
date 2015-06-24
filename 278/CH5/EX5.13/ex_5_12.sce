//find the load
clc
//refer fig 5.13
//solution
//given
f=140//N/mm^2
Ri=25//mm
Ro=50//mm
bi=19//mm
ti=3//mm
t=3//mm
h=25//mm
A=(3*22)+(3*19)//mm^2
Rn={ti*(bi-t)+t*h}/{[(bi-t)*log((Ri+t)/Ri)]+[t*log(Ro/Ri)]}//mm
R=Ri+{[(0.5*h^2*t)+(0.5*ti^2*(bi-t))]/{(h*t)+(ti*(bi-t))}}//mm
e=R-Rn//mm
x=50+R//mm
//M=W*x//N-mm
yi=Rn-Ri//mm
//f1=W/A=0.008*W//N/mm^2//direct tensile stress
//fbi=(M*yi)/(A*e*Ri)=0.115*W//N/mm^2
//f=f1+fbi
//0.123*W=140
W=140/0.123//N
printf("the value of e is,%f mm\n",e)
printf("the value of Rn is,%f mm\n",Rn)
printf("the load acting is,%f N",W)