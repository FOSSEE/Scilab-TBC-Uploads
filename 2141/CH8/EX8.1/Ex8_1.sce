
clc
//initialisation of variables
v=100//ft63
P1=10//lbf/in^2
T1=80//F
T2=80//f
v1=4.7248 //lbm
P2=50//lbf/in^2
u1=80.95 //Btu/lbm
s1=0.20746//btu/lbm-R
u2=78.40//Btu/lbm
s2=0.16885//Btu/lbm-R
VB=11.82//ft^3
V3=111.82//ft^3
h3=89.585//Btu/lbm
s3=0.20809//Btu/lbm-R
u3=76.62//Btu/lbm
s4=0.20809//Btu/lbm
h4=22.4 //Btu/lbm
I1=514//Btu
g=540//lbm
//CALCULATIONS
Wrev=(u1-u2)-g*(s1-s2)//Btu/lbm
m=v/v1//lbm
Wrev2=(m*Wrev)//Btu
v3=V3/m//ft^3/lbm
Wrev3=u2-u3-g*(s2-s4)//Btu/lbm
Wrev4=h4*(Wrev3)//Btu
Q=h4*(u3-u2)+0//Btu
I2=h4*g*(s4-s2)-(Q)//Btu
//RESULTS
printf('the minimum work input to the compressor=% f Btu',I2)
