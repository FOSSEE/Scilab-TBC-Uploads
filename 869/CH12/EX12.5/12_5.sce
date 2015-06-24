clc
//initialisation of variables
W= 600 //lb/ft
L1= 8 //in
L2= 4 //in
b= 6 //in
h= 8 //in
t= 1 //in
//CALCULATIONS
R1= W*(L1+L2)*((L1+L2)/2)/L1
R2= W*(L1+L2)*(L1-(L1+L2)/2)/L1
Vmax= 3000 //lb
I= (b*h^3/12)-(L2*b^3/12)
Ay= b*L2*(L2/2)-L2*b/2*b/4
b= t+t
Tmax= Vmax*Ay/(I*b)
//RESULTS
printf ('maximum shear stress= %.2f psi',Tmax) 
