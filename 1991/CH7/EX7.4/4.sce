clc
clear
//input
d=8.2*10^-7 //resistivity of coil
l=15 //length of wire
r=0.3*10^-3 //radius of wires
v=160 //power output
//calculations
R=d*l/(%pi*r*r)
p=v*v/R //for one coil
p1=v*v/(R+R) //for two coils in series
rp=(R*R)/(R+R)//total resistence 
pp=(v*v)/rp//total power
//output
printf("the power when one coil is %3.3f W",p)
printf("\nthe power when two coils in series is %3.3f W",p1)
printf("\n the power when coils in parallel is %3.3f W",pp)
