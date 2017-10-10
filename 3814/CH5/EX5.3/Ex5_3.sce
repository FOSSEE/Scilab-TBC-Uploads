
// a pelton wheel hydraulic efficiency and over all efficiency
// ex 5.3 pgno. 117
clc
D=1.45 // diameter of the wheel
N=375 // shaft running
u=(%pi*D*N)/60 // peripheral velocity
k=0.9 // coefficient of the bucket
p=3750 //peripherial velocity
hf=200*0.1 // head availabe
mprintf('\n  peripherial velocity u =%f m/s',u)
mprintf('\n Total Head = %d m',hf)

h1=200  // total head
l=20 // losses
H=h1-l  //effective head
g=9.8 // gravity
mprintf('\n effective head H = %d m',H)
V1=sqrt(2*g*H) // velocity of the jet
mprintf('\n velocity of the jet V1= %f m/s',V1)
S=u/V1 // speed ratio
mprintf('\n Speed Ratio =u/V1= %f',S)
nh=2*((S)*(1-S)*(1-k*cosd(165))) // hydraulic efficiency 
mprintf('\n  Hydraulic efficiency nh= %f percentage',(nh*100))
E=(u/g)*(V1-u)*(1-(k*cosd(165))) // euler's head
mprintf('\n E =%f m',E)
no=k*nh // realation between
mprintf('\n Relation between n0= %f',no)
hp=p/no // hydraulic power
mprintf('\n hydraulic power = %d kw',hp)
gamma1=9800 // constant gamma
Q=(1000*hp)/(2*gamma1*H) // flow rate
mprintf('\n Flow rate Q = %f m3/s',Q)
d=sqrt((4*Q)/(%pi*V1)) // diameter 
mprintf('\n d = %f m',d)
