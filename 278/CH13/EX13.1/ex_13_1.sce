//design rectanglar key
clc
//solution
//given
d=50//mm
t=42//N/mm^2
fc=70//N/mm^2
//from tab 13.1,using d=50mm 
w=16//mm
T=10//mm
//let l be length of key
//Tq1=l*w*t*d/2=16800*l1//N-mm//torque
pi=3.14
Tq=(pi/16)*t*d^3//
printf("the torsional moment acting is,%f N-mm\n",Tq)
l1=Tq/16800//mm
//Tq2=l2*T*fc*d/4=8750*l2
l2=Tq/8750//mm
printf("since l2 >l1,taking large value l2=l ,length of key\n")
//l=l2//mm
printf("the length of key is,%f mm\n",l2)
printf("the length oif key is,say 120 mm\n")
l=120//mm

