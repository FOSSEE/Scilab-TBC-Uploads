clc
//initialization of variables
clear
Ys=17000 //kg/cm^2
E=2*10^6 //kg/cm^2
d1=1 //mm
d=1 //cm
//calculations: 1 cm
R=E*d/(2*Ys)
M=Ys*%pi*d^3/32
// results
printf('%d cm daimeter wire:',d)
printf('\n Minimum radius = %.2f cm',R)
printf('\n Bending Moment = %.2f kg-cm',M)
// calculations: 1 mm
R1=R/(d1*10)
M1=M/(d1*1000)
// results
printf('\n %d mm daimeter wire:',d1)
printf('\n Minimum radius = %.2f cm',R1)
printf('\n Bending Moment = %.2f kg-cm',M1)
