clc
clear
//Initialization of variables
dout=1 //in
d1=0.049 //in
t1=70 //F
t2=80 //F
rho=62.2 //lbm/ft^3
mum=2.22 //lbm/ft hr
k=0.352 //Btu/hr ft F
cp=1 //Btu/lbm F
vel=500000 //lbm/hr
n=100 //tubes
//calculations
D=dout-2*d1
t=(t1+t2)/2
V=vel/n *4*144/(%pi*D^2 *rho)
Re=rho*V*D/(mum*12)
Pr=cp*mum/k
Nu=0.023*Re^0.8 *Pr^0.4
hc=Nu*k*12/D
//results
printf("Coefficient of heat transfer = %d Btu/hr ft^2 F",hc)
