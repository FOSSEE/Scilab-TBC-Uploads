//to find moment of inertia and distance of cg from small end centre
clc
//let l1 and l2 be length of equivalent simple pendulum when axis coincides with small end and big end respectively
//n1 and n2 =corresponding frequencies of oscillation per second
n1=50/84.4
n2=50/80.3
//let a1 and a2 = distances of cg from small end and big end centers respectively
//gravitaional force (g)=32.2 ft/s^2
//L=g/(2*%pi*n)
L1=(32.2*12)*(84.4/(100*%pi))^2
L2=(32.2*12)*(80.3/(100*%pi))^2
//a1(L1-a1)=k^2=a2(L2-a2) and a1+a2=30 inches
//substituting and solving for a we get 
a1=141/6.8
a2=30-a1
k=(a1*(L1-a1))^.5
moi=90*(149/144)//moi=m*k^2
printf("length of equivalent simple pendulum when axis coincides with small end and big end respectively-\n")
printf("L1=%.1f in\n",L1)
printf("L2=%.1f in\n",L2)
printf("distances of cg from small end and big end centers respectively are-\n")
printf("a1=%.1f in\n",a1)
printf("a2=%.1f in\n",a2)
printf("Moment of inertia of rod =%.2f lb ft^2",moi)
