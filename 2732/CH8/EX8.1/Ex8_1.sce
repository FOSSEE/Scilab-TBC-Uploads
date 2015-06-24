clc
// initialization of variables
clear
L=5 //m
D=20 //cm
t=1 //cm
E=2*10^6 //kg/cm^2
I=2502 //cm^4
L=5*100 //cm
// calculations
P=E*I/(4*L^2)
// results
printf('The maximal axial load taken is %.1f Tonne',P/100)
printf('\n for both ends pinned, P=%.1f Tonne',P*4/100)
printf('\n for both ends fixed, P=%.1f Tonne',P*16/100)
printf('\n for one end fixed, one pinned, P=%.1f Tonne',P*4*2.13/100)

// Evaluation of critical load (P) in the text is wrong
