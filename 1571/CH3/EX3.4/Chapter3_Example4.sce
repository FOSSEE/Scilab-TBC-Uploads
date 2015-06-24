clc
clear

//INPUT DATA 
n=2;//no.of lead blocks
m=210;//mass of each lead block in gm
v=20000;//velocity of block relative to earth in cm/sec
J=4.2*10^7;//mechanical equivalent of heat in ergs/calorie
cp=0.03;//specific heat of lead in kj/kg-K

//CALCULATIONS
E=(m*v^2)/2;//kinetic energy of each block in ergs
E2=n*E;//total kinetic energy in ergs
T=E2/(J*m*n*cp);//mean rise in temperature in T

//OUTPUT
mprintf('the mean rise in temperature is %3.1f deg.C',T)
