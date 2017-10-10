
//

//

a1=135,a2=145,

t1=180-a1
t2=180-a2
t3=180-(t1+t2)
r1=400,r2=200,

ct=1000

ED=r1*(tan((t1/2)*(%pi/180)))

FD=r2*(tan((t2/2)*(%pi/180)))

EF=ED+FD

printf("\n EF= %0.3f ",EF)

BE=EF*(sin(t2*(%pi/180)))/(sin(t3*(%pi/180)))

BF=EF*(sin(t1*(%pi/180)))/(sin(t3*(%pi/180)))


ct1=ct-(BE+ED)

cd=ct1+((%pi*r1*t1)/(180))

ct2=cd+((%pi*r2*t2)/(180))

printf("\n chainage of T1= %0.3f ",ct1)
printf("\n chainage of D= %0.3f ",cd)
printf("\n chainage of T2 %0.3f ",ct2)
