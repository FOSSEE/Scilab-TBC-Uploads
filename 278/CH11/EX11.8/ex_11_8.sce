//find size of bolt required
clc
//soltuion
//given
D=300//mm
p=1.5//N/mm^2
n=8
fy=330//N/mm^2
fe=240//n/mm^2
//P1=1.5*P2
Fs=2
K=0.5
pi=3.14
P2=(pi/4)*D^2*p//N
P1=1.5*P2//N
Pmax=P1+K*P2//N
printf("the max force on head  is,%f N\n",Pmax)
Pmax1=Pmax/n//N//load on each bolt
Pmin=P1/n//N
Pm=(Pmin+Pmax1)/2//N//average load
Pv=(Pmax1-Pmin)/2//N//variable load
printf("the mean and vaiable load acting are Pm and Pv,%f N\n,%f N\n",Pm,Pv)
//let dc core diametr of bolt in mm
//As=(pi/4)*dc^2//mm^2//stress area of bolt
//fm=Pm/As=29534/dc^2//N/mm^2
//fv=Pv/As=4220/dc^2//N/mm^2
//acc to soderberg's formula ,
//fv=fe[(1/Fs)-(fm/fy)]
//4420/dc^2=240*[(1/2)-29534/(dc^2*330)]
dc=sqrt(25700/120)//mm
printf("the value of core dai is,%f mm\n",dc)
printf("the standard value of core diametr  is 14.933 mm fron T11.1")
