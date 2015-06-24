//chapter8,Example8_1,pg 180

alpha=0.01

n=10

lam=6000*10^-8

u=1.5

//for dark fringe 2*u*t*cos(alpha)=n*lam

//t=xtan(alpha)

//2*u*x*sin(alpha)=2*u*x*alpha=n*lam ->alpha is small, sin(alpha)=alpha

x=(n*lam)/(2*u*alpha)

printf("distance of 10th fringe from edge of wedge\n")

printf("x=%.2f cm",x)