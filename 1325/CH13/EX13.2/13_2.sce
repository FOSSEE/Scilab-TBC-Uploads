//to find the weight of ball required and maximum equilibrium speed 
clc
//given
BG=4//in
//solution a
w=15//lb
W=120//lb
k=.720
BD=10.08//in
CE=BD
DG=BD+BG
//by equating quations 13.2 and 13.10 and reducing, we get
w1=(W/2*(1+k))/(((W/2*(1+k)+w)*DG/(BD*w))-1)
printf("\nWeight of ball = %.3f lb\n",w1)
//solution b
CD=6.5//in
BC=12//in
BF=10//in
AB=12//in
CG=(DG^2+CD^2)^(1/2)
gama=atan(CD/DG)
bita=asin(CD/BC)
alpha1=asin(BF/AB)
bita1=asin(8.5/BC)
gama1=gama+bita1-bita
F=((w1+W/2)*8.471*(tan(alpha1)+tan(bita1)))/(CG*cos(gama1))-(w1*tan(gama1))
printf("F1= %.1f lb",F)
r1=CG*sin(gama1)+1.5//radius of rotation
N1=(30/%pi)*(F*32.2*12/(w1*r1))^(1/2)
printf("\nr1= %.2f in\nN1= %.1f rpm",r1,N1)
