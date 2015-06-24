//find...
clc
//soltuion
//given
W=40000//N
L=400//mm
do=50//mm
p=10//mm
fcu=320//N/mm^2
fy=200//N/mm^2
ty=120//N/mm^2
tc=20//N/mm^2
pb=12//N/mm^2
E=210*1000//N/mm^2
u=0.13///=tan(q)
dc=do-p//mm
Ac=(%pi/4)*dc^2
fc=W/Ac//N/mm^2
d=(do+dc)/2//mm
//tan(a)=p/(%pi*d)=0.07
b=0.07
T=W*[(b+u)/(1-(b*u))]*d/2//N-mm//torque acting
//let t be stress
t=(T*16)/(%pi*dc^3)//N/mm^2
tmax=0.5*sqrt(fc^2 +4*t^2)//N/mm^2
printf("the max shear stressa cting is,%f N/mm^2\n",tmax)
Fs=ty/tmax
printf("factor of safety is,%f\n",Fs)
//let n be numbr of therads
//n=W/(12*%pi/4*(do^2-dc^2))
printf("the numbr of threads is,%f \n",W/(12*%pi/4*(do^2-dc^2)))
printf("the numbr of threads is n=5\n")
n=5
h=p*n//mm
printf("the heigth of nut is,%f mm\n",h)
To=W*b*d/2//N-mm
eff=To/T
printf("the eff of arrngement is,%f",eff)