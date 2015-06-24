clc
clear
//Initialization of variables
T1=100 //F
P2=1000 //psia
x=0.6
J=778.16
//calculations
disp("From table 3,")
v=0.01613 //ft^3/lbm
P1=0.9 //psia
wrev=-v*(P2-P1)*144/J
dv=0.000051 //ft^3/lbm
wcomp=(P2+P1)/2 *dv*144/J
wact=wrev/x
//results
printf("Work done = %.1f Btu/lbm",wrev)
printf("\n In case 2, work required = %.1f Btu/lbm",wact)
