clc;

E=210 //GPa
v=0.3
r1=0.4 //m radius
r2=0.3 //m cross radius
P=90 //kN compression load
1/r1'==1/r2'==0

m=4/((1/r1)+(1/r2))
disp(m)
A=(1/2)*((1/r1)+(1/r2))
disp(A)
B=(1/2)*((1/r1)-(1/r2))
disp(B)
coss=(((1/r1)-(1/r2))/((1/r1)+(1/r2)))
disp(coss,"cos aplha is= ")
n=(4*E*10^9)/(3*(1-v^2))
disp(n,"n is ")
s=acosd(coss)
disp(s," s is alpha value = ") // ans is 81.79degree but here since cosa is in negative we get ans as 98.21
ca=1.1040 // from the interpolating table
cb=0.9112 // from the interpolating table
a=ca*(90000*m/n)^(0.33)
disp(a,"semiaxes of the elliptical contact area in meter is= ")
b=cb*(90000*m/n)^(0.33)
disp(b,"semiaxes of the elliptical contact area in meter is= ")
sigmac=1.5*(90000/(%pi*a*b))
disp(sigmac,"max contact pressure in Pa is= ") // text book ans is wrong
