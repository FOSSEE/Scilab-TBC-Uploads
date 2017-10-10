//To find the smallest number of teeth 
clc
//given
phi=20*%pi/180
//Solution a)
ar=1
t1=2*ar/sin(phi)^2//from equation 10.7
T1=ceil(t1)
//Solution b)
aw=1
t2=2*aw/((1+3*sin(phi)^2)^(1/2)-1)//from euation 10.6
T2=ceil(t2)
//solution c)
t=1
T=3
A=(t/T)*(t/T+2)
t3=2*aw*(t/T)/((1+A*sin(phi)^2)^(1/2)-1)//from 10.5
T3=ceil(t3)
printf("\nSmallest number of teeth theoretically required in order to avoid interference on a pinion which is to gear with\na) A rack , t= %.f\nb) An equal pinion , t=  %.f\nc) A wheel to give a ratio of 3 to 1 , t= %.f\n",T1,T2,T3)
