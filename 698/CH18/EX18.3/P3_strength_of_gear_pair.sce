clc
//Example 18.3
//Strength  of gear pair

P=12e3
N=1000
phi=14.5
m=6
b=60

Np=30
Ng=75
yp=0.101

S_bend_perm=100e6
surface_endurance=600e6
E=100e9

printf('Beam Strength:\n\tBoth gears are made of same material, hence the pinion is weaker\n')

Mt = (P*60)/(2*%pi*N)
Rp=(m*Np)/2
F=Mt/Rp
printf('F = s b Pc y = %0.3f N\n',F)
s=F/(b*1e-3*%pi*0.006*yp)
printf('Induced stress s=%0.3f MPa\n',s*1e-3)
printf('Induced stress < Permissible stress\n\tHence it is safe in bending\n\n')

printf('Wear Strength:\n')
printf('Fw=Dp b K Q\n')
Dp=2*Rp
K=(surface_endurance^2 * sind(phi) * ((1/E)+(1/E)))/1.4
Q=(2*Ng)/(Ng+Np)
Fw=Dp*1e-3*b*1e-3*K*Q
printf('\t=%0.3f N\n',Fw)
printf('The pair is strong in wear as well.')

//End of programme