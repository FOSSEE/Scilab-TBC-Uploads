
clc
//initialisation of variables
v=100//ft^3
vliq=1 //ft^3
w=99 //ft^3
wvap=14.7 //lbf/in^2
vf=0.01672 //lbm
vg=26.80 //lbm
p=294 //lbf/in^2
Tu=1.575 //lbf
u2=1117.0//Btu/lbm
vg1=1077.5//ft^3
p1=180.0//lbf/in^2
//CALCULATIONS
mliq=(vliq/vf)//lbm
m1vap=(w/vg)//lbm
U=(mliq*p1)+(m1vap*vg1)//Btu
m=mliq+m1vap //lbm
v2=v/m//ft^3/lbm
U2=m*u2//Btu
Q2=(U2-U)//Btu
//RESULTS
printf('The heat transfer for this process=% f Btu',Q2)
