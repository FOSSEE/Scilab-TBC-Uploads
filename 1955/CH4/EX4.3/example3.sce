clc
clear
//input data
N=8//Number of stages
Po=6//Overall pressure ratio 
T01=293//Temperature of air at inlet in K
nc=0.9//Overall isentropic efficiency
DR=0.5//Degree of reaction 
U=188//Mean blade speed in m/s
Ca=100//Constant axial velocity in m/s
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K
r=1.4//The ratio of specific heats of air

//calculations
T0n1s=T01*(Po)^((r-1)/r)//The isentropic temperature of air leaving compressor stage in K
T0n1=((T0n1s-T01)/nc)+T01//The temperature of air leaving compressor stage in K
dta2ta1=(Cp*(T0n1-T01))/(N*U*Ca)//The difference between tan angles of air exit and inlet
sta1tb1=U/Ca//The sum of tan of angles of air inlet and the angle made by the relative velocity 
b1=atand((dta2ta1+sta1tb1)/2)//The angle made by the relative velocity vector at exit in degree as the DR=1 then a2=b1
a1=atand(tand(b1)-dta2ta1)//Air flow angle at exit in degree
W=Cp*(T0n1-T01)*10^-3//Power required per kg of air/s in kW

//output
printf('(a)Power required is %3.2f kW\n(b)\n    (1)Air flow angle at exit is %3i degree \n    (2)The angle made by the relative velocity vector at exit is %3i degree',W,a1,b1)
