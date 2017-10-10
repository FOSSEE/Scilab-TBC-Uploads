clc
//soltuion
//given
pi = %pi;
P=15*10^3//W
N=960//rpm
d=40//mm
l=75//mm
t=56//N/mm^2
fc=112//N/mm^2
Tq=(P*60)/(2*%pi*N)//N-mm
//let w be width of key
//Tq=l*w*t*d/2=84000*w
//w=Tq/84000//mm
printf("the width of keywy is,%f mm\n",Tq/84000)
printf("this width is too small,it should be atleats w=d/4,so taking w=d/4 as min widht we get w=d/4=10//mm\n")
w=10//mm
T=10//mm//thickness =width=square key
h=T/2
e=1-(0.2*(w/d))-1.1*(h/d)
P1=(pi/16)*t*d^3*e//N//strength of shaft
Ps=l*w*t*d/2//N//shear strength of shaft
x=Ps/P1//
printf("the check value is,%f",x)