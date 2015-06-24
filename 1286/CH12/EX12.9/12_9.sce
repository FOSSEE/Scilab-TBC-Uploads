clc
//initialisation
r2=0.5
r1=0.4
l=30//cm
q=(500*10)/60
t=100//c
t1=20//c
t2=30//c
dt=t-(t1+t2)/2
//CALCULATIONS
k=(q*log((r2)/(r1)))/(2*3.14*dt*l)
//results
printf(' \n thermal conductivity of glass tube= % 1f cgs units',k)
