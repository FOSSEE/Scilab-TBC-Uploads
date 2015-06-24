
clc
//initialisation of variables
he=629.6 //Btu/lbm
vf1=0.02732 //Ft^3/lbm
vg1=1.502 //ft^3/lbm
vf2=0.02584 //ft^3/lbm
vg2=2.952 //ft^3/lbm
p1=200 //lbf/in^2
p2=100 //lbf/in^2
hg=632.7//Btu/lbm
h1=626.5 //Btu/lbm
h=150.9//Btu/lbm
h2=104.7 //Btu/lbm
m1=25//lbm
m2=850 //lbm
t=50 //ft^3
x=(0.0334)/(2.926)
T=778//F
t2=144//in^2/ft^3
//CALCULATIONS
uf1=h-(p1*t2*vf1/T)//Btu/lbm
uf2=h2-(p2*t2*vf2)/T//Btu/lbm
ug1=hg-(p1*t2*vg1)/T//Btu/lbm
ug2=h1-(p2*t2*vg2)/T //btu/lbm
ufg=ug2-uf2 //Btu/lbm
m=m1/vf1 //lbm
mg=m1/vg1 //lbm
M=m+mg //lbm
M1=M*he//Btu
Mu1=m*uf1+mg*ug1 //Btu
M2=M1-Mu1 //Btu
U1=t/m2 //ft^3/lbm
U2=uf2+x*ufg//Btu/lbm
M3=(M1-Mu1)/(he-U2)
Me=M-M3//lbm
//RESULTS
printf('The mass of ammonia =% f lbm',Me)
