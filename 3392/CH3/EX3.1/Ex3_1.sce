clc
// initialization of variables
clear
// part (a)
E=72 // G Pa
v=0.33 // Poisoon's ratio
h=2 // mm
R=600 // mm
//calculations
sig_cir=E*h/(2*(1-v^2)*R)
// results
printf('\n part (a) \n')
printf(' The maximum circumferential stress is %.d M Pa',sig_cir*10^3)
