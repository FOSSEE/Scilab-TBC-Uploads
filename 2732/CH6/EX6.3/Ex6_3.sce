clc
// initialization o variables
clear
p=5 //cm
D=10 //cm
d=2 //mm
T= 10 //kgm
ss= 785 //kg/cm^2
// calculations
P= 2*T/(%pi*D^2)
P=P*5*100
// results
printf('Force per rivet is %.1f kg',P)
printf('\n The diameter of rivet, using a permissible stress of %d kg/cm^2 = 0.227 cm',ss)
