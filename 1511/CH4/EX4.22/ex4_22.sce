// Example 4.22 page no-245
clear
clc

idss=5*10^-3//mA
vp = -5  //V
rs =5000 //Ohm
rl=2 //k-ohm
vdd=10
//Vgs^2+11Vgs+25=0 fro equation of Id and Vgs
vgs=(-11+sqrt(121-100))/2
id=idss*(1-(vgs/vp))^2
x=id*rl*1000
y=id*rs
vds =vdd-x-y
printf("\nVgs = %.2fV\nId = %.2f mA\nVds = %.1f V\nThe FET must be conducting.\nIf VGS = -7.8V the FET in cut off. Therefore Vp = -5V. \nTherefore VGS is chosen as -3.2V",vgs,id*1000,vds)
