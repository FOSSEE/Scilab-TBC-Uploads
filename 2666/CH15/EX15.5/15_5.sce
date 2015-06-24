clc
//initialisation of variables
v=5000//cu ft 
t=85//F
p=40//percent
t1=60//F
p1=14.2//psi
Pv=0.4*0.5959//psia
h=0.622//ft
m=32.07//Btu per lb dry air
m2=25.95//Btu per lb dry air
//CALCULATIONS
S=h*(Pv/(p1-Pv))//lb vapor per lb dry air
Q=m-m2//Btu per lb dry air
W=((p1-Pv)*(144)*v)/(53.33*(85+460))//lb
T=W*Q//Btu
//RESULTS
printf('the total heat removed equals=% f Btu',T)
