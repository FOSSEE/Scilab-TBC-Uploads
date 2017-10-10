clc
//initialisation of variables
n= 8
shear= 15 //ksi
Dr= 7/8 //in
Ss= 32 //ksi
Ds= 40 //si
D= 3/8 //in
x= 0.504 //in
//CALCULATIONS
Ps= shear*n*(Dr/2)^2
Pb= Ds*(n/2)*x*Dr
Pb1= Ss*n*D*Dr
pmin= Ps
if (Pb<pmin) 
pmin=Pb
end
//results
printf('load capacity of connection %.2f kips',Pb)