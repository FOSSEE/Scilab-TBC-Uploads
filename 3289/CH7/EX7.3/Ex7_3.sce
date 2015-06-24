clc
a=15 //mm
b=10 //mm
h=5 //mm
h1=4.4 //mm
h2=2.45 //mm
h3=3 //mm

x=[2 0 0 0 2 -4;0 2 0 1 -4 1;0 0 2 -4 1 0;-4 2 0 0 0 1;1 -4.27 1 0 1.06 0;0 1.25 -7.41 1.34 0 0]
disp(x)
y=[-2 ;-2; -2; -2; -2; -2]
disp(y)
z=inv(x)*y
printf('fi=%f G*h^2*theta \n',z)
 
dfi=2.075 
d3fi=-0.001
d2fi=-1.383
d4fi=0.002

//tauB=derivative(fi,y)B
tauB=(dfi+(d2fi/2)-(d3fi/3)+(d4fi/4))
printf('tauB=%f G*thetab\n',tauB)

dfi=1.536
d2fi=-0.613
d3fi=-0.002
d4fi=0.001
d5fi=0.001
d6fi=-0.002

//tauA=derivative(fi,x)A
tauA=(dfi+(-d2fi/2)-(d3fi/3)-(d4fi/4)+(d5fi/5)+(d6fi/6))
printf('tauA=%f G*thetaa\n',tauA)




